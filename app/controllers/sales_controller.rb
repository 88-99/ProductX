class SalesController < ApplicationController
  before_action :set_team
  before_action :set_sale, only: %i[ edit update destroy detail_destroy ]
  before_action :set_sale_detail, only: %i[ detail_destroy ]

  def index
    @sales = @team.sales.all # .order(created_at: :desc)
  end

  def new
    @sale = @team.sales.build
    1.times { @sale.sale_details.build }
    @products = @team.products
  end

  def create
    @sale = @team.sales.build(sale_params) # salesはhas_many :sales
    # @sale = Sale.new(sale_params)
    @sale.user_id = current_user.id
    if @sale.save
      redirect_to edit_sale_path(@team, @sale.id), notice: "売上を登録しました！"
    else
      render :new
    end    
  end
  
  def edit
    @products = @team.products
    @total_amount = 0
    @sale.sale_details.each {|detail| @total_amount += detail.quantity * detail.product.selling_price}
    
    @sale.sale_details.build
    # @products = Sale.find(params[:id]).saled_products
  end

  def update    
    if @sale.update(sale_params)
      redirect_to edit_team_sale_path(@team, @sale.id), notice: "売上を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @sale.destroy
    redirect_to team_sales_path(@team), notice: "売上を削除しました！"
  end

  def detail_destroy
    @sale_detail.destroy
    redirect_to edit_team_sale_path(@team, @sale.id), notice: "商品を削除しました！"
  end

  private

  def set_team
    # @team = current_user.grouping_team
    @team = Team.find(params[:team_id])
  end

  def set_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:code, :date_at, :inputter, :client_id, sale_details_attributes: [:id, :product_id, :quantity])
  end

  def set_sale_detail
    @sale_detail = SaleDetail.find(params[:sale_detail_id])
  end

  def purchase_detail_params
    params.require(:sale_detail).permit(:quantity, :sale_id, :product_id)
  end
end