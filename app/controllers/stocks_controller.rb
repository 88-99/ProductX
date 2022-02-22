class StocksController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    @products = @team.products
    @stock_details = []

    if params[:team][:search_params].present?
      @purchase_details = PurchaseDetail.where(product_id: params[:team][:product_id])
      @sale_details = SaleDetail.where(product_id: params[:team][:product_id])
      # sortに必要なdataはsaleとpurchaseそれぞれの親Modelのdate_atなので,下記のようにsort_byをうまく使う
      @stock_details = (@purchase_details + @sale_details).sort_by{|record|
        if record.try(:sale).nil?
          record.purchase.date_at
        else
          record.sale.date_at
        end
      }
    end
    # @stock_details = @stock_details.order(date_at: :desc)
  end
end