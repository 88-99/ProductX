# require 'rails_helper'
# describe '売上モデル機能', type: :model do
#   describe 'バリデーションのテスト' do
#     before do
#       @user = FactoryBot.create(:user, :a)
#       @team = FactoryBot.create(:team, user: @user)
#       @client = FactoryBot.create(:client)
#     end
#     context '売上の日付が空の場合' do
#       it 'バリデーションにひっかかる' do
#         sale = Sale.new(
#           date_at: nil,
#           inputter: @user.id,
#           user_id: @user.id
#           )
#         expect(sale).not_to be_valid
#       end
#     end
#     context '売上登録に必要な項目が記載されている場合' do
#       it 'バリデーションが通る' do
#         sale = Sale.new(
#           date_at: '002022-02-01',
#           inputter: @user.id,
#           user_id: @user.id,
#           team_id: @team.id,
#           client_id: @client.id
#           )
#         expect(sale).to be_valid
#       end
#     end
#   end
# end