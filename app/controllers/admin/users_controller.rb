class Admin::UsersController < ApplicationController
  before_action :set_user, only: %i[ destroy ]
  before_action :check_admin

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice: "ユーザを登録しました！"
    else
      render :new
    end
  end

  def destroy
    if @user.destroy
      redirect_to admin_users_path, notice: "ユーザ「#{@user.name}」を削除しました！"
    else
      redirect_to admin_users_path, notice: "ユーザ「#{@user.name}」は、管理者がいなくなるため削除できません。"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :nickname,
                                 :phone_number, :admin)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
