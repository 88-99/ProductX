FactoryBot.define do
  factory :sale do
    date_at {'002022-02-02'}
    inputter { 1 }
    client_id { FactoryBot.create(:client).id }
    user_id { FactoryBot.create(:user).id }
    team_id { FactoryBot.create(:team).id }
  end

  factory :second_sale, class: Sale do
    date_at {'002022-05-05'}
    inputter { 1 }
    client_id { FactoryBot.create(:client).id }
    user_id { FactoryBot.create(:user).id }
    team_id { FactoryBot.create(:team).id }
  end
end