class StocksController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    @purchase_details = PurchaseDetail.where(product_id: params[:product_id])
    @sale_details = SaleDetail.where(product_id: params[:product_id])
    # sortに必要なdataはsaleとpurchaseそれぞれの親Modelのdate_atなので,下記のようにsort_byをうまく使う
    @stock_details = (@purchase_details + @sale_details).sort_by{|record|
      if record.try(:sale).nil?
        record.purchase.date_at
      else
        record.sale.date_at
      end
    }
    # @stock_details = @stock_details.order(date_at: :desc)
  end
end