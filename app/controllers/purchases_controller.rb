class PurchasesController < ApplicationController
  before_action :set_team
  before_action :set_purchase, only: %i[ edit update destroy detail_destroy ]
  before_action :set_purchase_detail, only: %i[ detail_destroy ]

  def index
    @purchases = @team.purchases.all # .order(created_at: :desc)
  end

  def new
    @purchase = @team.purchases.build
    # @purchase = Purchase.new
    # @purchase.team_id = current_user.grouping_team[0].id
    # @purchase = current_user.grouping_team.purchase.build
    1.times { @purchase.purchase_details.build }
    @products = @team.products
  end

  def create
    @purchase = @team.purchases.build(purchase_params) # purchasesはhas_many :purchases
    @purchase.user_id = current_user.id
    # @purchase = Purchase.new(purchase_params)
    # @purchase.user_id = current_user.id
    if @purchase.save
      redirect_to edit_team_purchase_path(@team, @purchase.id), notice: "仕入を登録しました！"
    else
      render :new
    end    
  end
  
  def edit
    @products = @team.products
    @total_amount = 0
    @purchase.purchase_details.each {|detail| @total_amount += detail.quantity * detail.product.cost_price}

    @purchase.purchase_details.build
    # @products = Purchase.find(params[:id]).purchased_products
  end

  def update
    if @purchase.update(purchase_params)
      redirect_to edit_team_purchase_path(@team, @purchase.id), notice: "仕入を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @purchase.destroy
    redirect_to team_purchases_path(@team), notice: "仕入を削除しました！"
  end

  def detail_destroy
    @purchase_detail.destroy
    redirect_to edit_team_purchase_path(@team, @purchase.id), notice: "商品を削除しました！"
  end

  private

  def set_team
    # @team = current_user.grouping_team
    @team = Team.find(params[:team_id])
  end

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
    params.require(:purchase).permit(:code, :date_at, :inputter, :supplier_id, purchase_details_attributes: [:id, :product_id, :quantity])
  end

  def set_purchase_detail
    @purchase_detail = PurchaseDetail.find(params[:purchase_detail_id])
  end

  def purchase_detail_params
    params.require(:purchase_detail).permit(:quantity, :purchase_id, :product_id)
  end
end