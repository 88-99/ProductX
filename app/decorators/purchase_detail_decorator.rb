# frozen_string_literal: true

module PurchaseDetailDecorator
  def date_at_of_purchase_or_sale
    if purchase_id.present?
      purchase.date_at
    else
      sale.date_at
    end
  end

  def name_of_purchase_or_sale
    if purchase_id.present?
      purchase.supplier.name
    else
      sale.client.name
    end
  end

  def price_of_purchase_or_sale
    if purchase_id.present?
      product.cost_price
    else
      product.selling_price
    end
  end
end
