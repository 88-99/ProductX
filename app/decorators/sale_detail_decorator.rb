# frozen_string_literal: true

module SaleDetailDecorator
  def date_at_of_purchase_or_sale
    if sale_id.present?
      sale.date_at
    else
      purchase.date_at
    end
  end

  def name_of_purchase_or_sale
    if sale_id.present?
      sale.client.name
    else
      purchase.supplier.name
    end
  end

  def price_of_purchase_or_sale
    if sale_id.present?
      product.selling_price
    else
      product.cost_price
    end
  end
end
