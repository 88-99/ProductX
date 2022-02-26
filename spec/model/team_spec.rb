# require 'rails_helper'
# describe 'チームモデル機能', type: :model do
#   describe 'バリデーションのテスト' do
#     before do
#       @user = FactoryBot.create(:user, :a)
#       @team = FactoryBot.create(:team, user: @user)
#     end
#     context 'チーム名が空の場合' do
#       it 'バリデーションにひっかかる' do
#         team = Team.new(name: nil)
#         expect(team).not_to be_valid
#       end
#     end
#     context 'チームに必要な項目が記載されている場合' do
#       it 'バリデーションが通る' do
#         team = Team.new(name: 'TeamTeam',
#                         user_id: @user.id
#                         )
#         expect(team).to be_valid
#       end
#     end
#   end
# end