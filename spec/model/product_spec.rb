# require 'rails_helper'
# describe '商品モデル機能', type: :model do
#   describe 'バリデーションのテスト' do
#     before do
#       @user = FactoryBot.create(:user, :a)
#       @team = FactoryBot.create(:team)
#     end
#     context '商品コードが空の場合' do
#       it 'バリデーションにひっかかる' do
#         product = Product.new(
#           code: "nill",
#           name: 'ppp',
#           regular_price: 1000,
#           selling_price: 800,
#           cost_price: 600,
#           user_id: @user.id,
#           team_id: @team.id
#           )
#         expect(product).not_to be_valid
#       end
#     end
#     context '商品の名前が空の場合' do
#       it 'バリデーションにひっかかる' do
#         product = Product.new(
#           code: "ppp",
#           name: nill,
#           regular_price: 1000,
#           selling_price: 800,
#           cost_price: 600,
#           user_id: @user.id,
#           team_id: @team.id
#           )
#         expect(product).not_to be_valid
#       end
#     end
#     context '商品登録に必要な項目が記載されている場合' do
#       it 'バリデーションが通る' do
#         product = Product.new(
#           code: "ppp",
#           name: "ppp",
#           user_id: @user.id,
#           team_id: @team.id
#           )
#         expect(product).to be_valid
#       end
#     end
#   end
# end