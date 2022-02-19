class ProductsController < ApplicationController
  before_action :set_team
  before_action :set_product, only: %i[ edit update ]

  def index
    @products = @team.products.all # .order(created_at: :desc)
  end

  def new
    @product = Product.new
  end

  def create
    @product = @team.products.build(product_params) # productsはhas_many :products
    @product.user_id = current_user.id
    # @product = Product.new(product_params)
    # @product.user_id = current_user.id
    if @product.save
      redirect_to edit_team_product_path(@team, @product.id), notice: "商品を登録しました！"
    else
      render :new
    end    
  end
  
  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to edit_team_product_path(@team, @product.id), notice: "商品を編集しました！"
    else
      render :edit
    end
  end

  private

  def set_team
    @team = current_user.team
  end

  def set_product
    @product = @team.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:code, :name, :remarks, :regular_price, :selling_price, :cost_price)
  end
end