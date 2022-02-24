require 'rails_helper'
RSpec.describe 'ユーザー機能', type: :system do

  # before do
  #   @user = FactoryBot.create(:user, :a)
  #   @user_2 = FactoryBot.create(:user, :b)
  #   visit new_session_path
  #   fill_in :session_email, with: @user.email
  #   fill_in :session_password, with: @user.password
  #   click_button 'Log in'
  # end

  # describe '新規作成機能' do
  #   context 'ユーザーを新規作成した場合' do
  #     it '作成したユーザーが表示される' do
  #       click_on "ログアウト"
  #       visit new_user_registration_path
  #       fill_in :user_name, with: 'test1234'
  #       fill_in :nickname, with: 'test1234'
  #       fill_in :phone_number, with: '09011110000'
  #       fill_in :user_email, with: 'test@test.com'
  #       fill_in :user_password, with: 'aaaaaa'
  #       fill_in :user_password_confirmation, with: 'aaaaaa'
  #       click_on '登録'
  #       expect(page).to have_content 'test1234'
  #     end
  #   end

#     context 'ログインせずメインメニューに飛ぼうとした場合' do
#       it 'ログイン画面が表示される' do
#         click_on "ログアウト"
#         visit menus_path
#         expect(page).to have_content 'ログイン'
#       end
#     end
  end

#   describe 'セッション機能' do
#     context 'ログインした場合' do
#       it 'ログインしたユーザーが表示される' do
#         click_on "Logout"
#         visit new_session_path
#         fill_in :session_email, with: @user.email
#         fill_in :session_password, with: @user.password
#         click_button 'Log in'
#         expect(page).to have_content 'factory_user_aaa'
#       end
#     end

#     context 'ログアウトした場合' do
#       it 'ログインもしくはアカウント登録してください。が表示される' do
#         visit menus_path
#         click_on "ログアウト"
#         expect(page).to have_content 'ログインもしくはアカウント登録してください。'
#       end
#     end
#   end
# end