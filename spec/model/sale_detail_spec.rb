# require 'rails_helper'
# describe '売上明細モデル機能', type: :model do
#   describe 'バリデーションのテスト' do
#     before do
#       @user = FactoryBot.create(:user, :a)
#       @team = FactoryBot.create(:team, user: @user)
#       @product = FactoryBot.create(:product, user: @user, team: @team)
#       @sale = FactoryBot.create(:sale, user_id: @user.id, team_id: @team.id)
#     end
#     context '売上明細の数量が空の場合' do
#       it 'バリデーションにひっかかる' do
#         sale_detail = SaleDetail.new(
#                           quantity: nil,
#                           )
#         expect(sale_detail).not_to be_valid
#       end
#     end
#     context '売上明細に必要な項目が記載されている場合' do
#       it 'バリデーションが通る' do
#         sale_detail = SaleDetail.new(
#                           quantity: '100',
#                           product_id: @product.id,
#                           sale_id: @sale.id
#                           )
#         expect(sale_detail).to be_valid
#       end
#     end
#   end
# end