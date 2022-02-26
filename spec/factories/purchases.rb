FactoryBot.define do
  factory :purchase do
    date_at {'002022-02-02'}
    inputter { 1 }
    supplier_id { FactoryBot.create(:supplier).id }
    user_id { FactoryBot.create(:user).id }
    team_id { FactoryBot.create(:team).id }
  end

  factory :second_purchase, class: Purchase do
    date_at {'002022-05-05'}
    inputter { 1 }
    supplier_id { FactoryBot.create(:supplier).id }
    user_id { FactoryBot.create(:user).id }
    team_id { FactoryBot.create(:team).id }
  end
end