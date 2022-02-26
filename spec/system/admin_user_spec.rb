# require 'rails_helper'
# RSpec.describe '管理機能', type: :system do
#   describe 'アクセス機能' do
#     before do
#       admin_user = FactoryBot.create(:user, :c)
#       @user = FactoryBot.create(:user, :a)
#       user_2 = FactoryBot.create(:user, :b)
#       @team_admin = FactoryBot.create(:team, user: admin_user)
#       @team = FactoryBot.create(:team, user: @user)
#       @team_2 = FactoryBot.create(:team, user: user_2)
#       @grouping_admin = Grouping.create(user_id: admin_user.id, team_id: @team_admin.id)
#       @grouping = Grouping.create(user_id: @user.id, team_id: @team.id)
#       @grouping_2 = Grouping.create(user_id: user_2.id, team_id: @team_2.id)
#       visit new_admin_user_path
#       fill_in :user_email, with: admin_user.email
#       fill_in :user_password, with: admin_user.password
#       click_button 'ログイン'
#     end
#     context '管理ユーザが管理画面にアクセスした場合' do
#       it 'ユーザ一覧が表示される' do
#         visit admin_users_path
#         expect(page).to have_content "【管理者用】ユーザ一覧"
#         expect(page).to have_content "factory_user_aaa"
#       end
#     end
#     context '一般ユーザが管理画面にアクセスした場合' do
#       it '権限がありません。と表示され、管理画面に遷移しない' do
#         click_on 'ログアウト'
#         visit new_user_session_path
#         fill_in :user_email, with: @user.email
#         fill_in :user_password, with: @user.password
#         click_button 'ログイン'
#         visit admin_users_path
#         expect(page).to have_content "権限がありません。"
#         expect(page).not_to have_content "【管理者用】ユーザ一覧"
#       end
#     end
#   end
# end