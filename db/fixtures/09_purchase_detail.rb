3.times do |m|
  5.times do |n|
    PurchaseDetail.create!(
                  purchase_id: n+1, # 1..5
                  product_id:  n+1,
                  quantity:    (n+1)*100
                  )
  end
  5.times do |n|
    PurchaseDetail.create!(
                  purchase_id: n+6, # 6..10
                  product_id:  n+6,
                  quantity:    (n+1)*100
                  )
  end
  5.times do |n|
    PurchaseDetail.create!(
                  purchase_id: n+11, # 11..15
                  product_id:  n+11,
                  quantity:    (n+1)*100
                  )
  end
end