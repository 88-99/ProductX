# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to new_team_path, notice: 'ゲスト一般ユーザーとしてログインしました！アプリを利用するには、次にチームを作成してください。'
  end

  def admin_guest_sign_in
    admin = User.guest_admin
    sign_in admin
    redirect_to new_team_path, notice: 'ゲスト管理者としてログインしました！アプリを利用するには、次にチームを作成してください。'
  end
  
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
