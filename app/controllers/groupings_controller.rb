class GroupingsController < ApplicationController
  before_action :set_grouping, only: %i[show]

  def new
    @grouping = Grouping.new
  end

  def create
    @user = User.find_by(email: params[:grouping][:email])
    @team = Team.find(current_user.team.id)  
    unless Grouping.find_by(user_id: @user).present?  
    # unless @team.groupings.find_by(user_id: @user).present?
      if @user.present?
        @grouping = @user.groupings.build(team_id: @team.id)
        @grouping.save
        redirect_to team_path(@team.id), notice: "メンバーを登録しました！"
      else
        redirect_to new_team_grouping_path(params[:team_id]), notice: "#{params[:grouping][:email]}はユーザ登録されていないので、メンバーに追加できません。"        
      end      
    else
      redirect_to new_team_grouping_path(params[:team_id]), notice: "#{@user.name}は既にチームに所属していますので、追加できません。"      
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @team = Team.find(params[:team_id])
    @grouping = @team.groupings.find_by(user_id: @user)
    unless @team.chief == @user.id
      @grouping.destroy
      redirect_to new_team_path, notice:"メンバーを削除しました！"
    else
      redirect_to team_path(@team.id), notice:"チームのオーナーは削除できません。"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end    

  def set_grouping
    @grouping = Grouping.find(params[:id])
  end
end
