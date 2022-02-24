# require 'rails_helper'
# RSpec.describe '管理機能', type: :system do

#   before do
#     admin_user = FactoryBot.create(:user, :admin)
#     @user = FactoryBot.create(:user, :a)
#     @user_2 = FactoryBot.create(:user, :b)
#     visit new_admin_user_path
#     fill_in :session_email, with: admin_user.email
#     fill_in :session_password, with: admin_user.password
#     click_button 'ログイン'
#   end

#   describe 'アクセス機能' do
#     context '管理ユーザが管理画面にアクセスした場合' do
#       it 'ユーザ一覧が表示される' do
#         visit admin_users_path
#         expect(page).to have_content "【管理者用】ユーザ一覧"
#         expect(page).to have_content "factory_user_aaa"
#         expect(page).to have_content "ニックネームbbb"
#       end
#     end

#     context '一般ユーザが管理画面にアクセスした場合' do
#       it 'ログインもしくはアカウント登録してください。と表示され、管理画面に遷移しない' do
#         visit new_user_session_path
#         fill_in :session_email, with: @user.email
#         fill_in :session_password, with: @user.password
#         click_on 'ログイン'
#         visit admin_users_path
#         expect(page).to have_content "ログインもしくはアカウント登録してください。"
#         expect(page).not_to have_content "【管理者用】ユーザ一覧"
#       end
#     end
#   end
# end