class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[ edit update destroy ]

  def index
    @purchases = Purchase.all # .order(created_at: :desc)
  end

  def new
    @purchase = Purchase.new
    1.times { @purchase.purchase_details.build }
    @products = Product.where(user_id: current_user.id)
  end

  def create
    @purchase = current_user.purchases.build(purchase_params) # purchasesはhas_many :purchases
    # @purchase = Purchase.new(purchase_params)
    # @purchase.user_id = current_user.id
    if @purchase.save
      redirect_to edit_purchase_path(@purchase.id), notice: "仕入を登録しました！"
    else
      render :new
    end    
  end
  
  def edit
    @total_amount = 0
    @purchase.purchase_details.each {|detail| @total_amount +=  detail.quantity * detail.product.cost_price}

    @purchase.purchase_details.build
    @products = Purchase.find(params[:id]).purchased_products
  end

  def update    
    if @purchase.update(purchase_params)
      redirect_to edit_purchase_path(@purchase.id), notice: "仕入を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @purchase.destroy
    redirect_to purchases_path, notice: "仕入を削除しました！"
  end

  private
  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
    params.require(:purchase).permit(:code, :date_at, :inputter, :supplier_id, purchase_details_attributes: [:id, :product_id, :quantity])
  end
end