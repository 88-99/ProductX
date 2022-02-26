FactoryBot.define do
  factory :product do
    code {'FactoryProduct1'}
    name {'Factoryで作った商品１'}
    regular_price { 300 }
    selling_price { 200 }
    cost_price { 100 }
  end

  factory :second_product, class: Product do
    code {'FactoryProduct2'}
    name {'Factoryで作った商品２'}
    regular_price { 400 }
    selling_price { 300 }
    cost_price { 200 }
  end
end