FactoryBot.define do
  factory :product do
    code {'FactoryCode1'}
    name {'Factoryで作った名前１'}
    regular_price { 300 }
    selling_price { 200 }
    cost_price { 100 }
  end

  factory :second_product, class: Product do
    code {'FactoryCode2'}
    name {'Factoryで作った名前２'}
    regular_price { 400 }
    selling_price { 300 }
    cost_price { 200 }
  end
end