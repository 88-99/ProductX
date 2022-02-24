# require 'rails_helper'
# describe '仕入モデル機能', type: :model do
#   describe 'バリデーションのテスト' do
#     before do
#       @user = FactoryBot.create(:user, :a)
#       @team = FactoryBot.create(:team)
#     end
#     context '仕入の名前が空の場合' do
#       it 'バリデーションにひっかかる' do
#         purchase = Purchase.new(
#           name: nill,
#           date_at: '2022.02.01'
#           user_id: @user.id,
#           team_id: @team.id
#           supplier_id: Supplier.first.id,
#           inputter: @user.id
#           )
#         expect(purchase).not_to be_valid
#       end
#     end
#     context '仕入の日付が空の場合' do
#       it 'バリデーションにひっかかる' do
#         purchase = Purchase.new(
#           name: 'name',
#           date_at: nill
#           user_id: @user.id,
#           team_id: @team.id
#           supplier_id: Supplier.first.id,
#           inputter: @user.id
#           )
#         expect(purchase).not_to be_valid
#       end
#     end
#     context '仕入登録に必要な項目が記載されている場合' do
#       it 'バリデーションが通る' do
#         purchase = Purchase.new(
#           name: 'name',
#           date_at: '2022.02.01'
#           user_id: @user.id,
#           team_id: @team.id
#           supplier_id: Supplier.first.id,
#           inputter: @user.id
#           )
#         expect(purchase).to be_valid
#       end
#     end
#   end
# end