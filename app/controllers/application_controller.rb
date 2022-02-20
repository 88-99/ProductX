class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, if: :use_auth?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :restrict_member

  def after_sign_in_path_for(resource)
    case resource
    when User
      if current_user.groupings.exists?
        menus_path
      else
        new_team_path
      end
    when Admin
      menus_path
    end
  end

  def check_admin
    unless current_user.admin
      redirect_to root_path, notice: "権限がありません。"
    end
  end

  def check_user(team)
    redirect_to menus_path if current_user.groupings.first.id != team.id
  end

  private
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :nickname])
    # deviseのUserモデルに関わるログインや新規登録などのリクエストからパラメーターを取得できるようになるメソッド
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number, :nickname])
  end

  def use_auth?
    unless controller_name == "tops" && action_name == "index"
      true
    end
  end

  def restrict_member
    if current_user.try!(:grouping_team).nil?
    # unless !current_user.present? && current_user.try!(:grouping_team).present?
      redirect_to menu_member_path, notice: "チームに所属してください。"
    end
  end
end
