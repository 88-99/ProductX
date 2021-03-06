class TeamsController < ApplicationController
  skip_before_action :restrict_member, only: %i[new create]
  before_action :set_team, only: %i[show edit update]

  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(team_params)
    @team.user_id = current_user.id
    @team.chief = current_user.id
    @team.save
    @team = Team.last
    
    unless Grouping.team_assign?(current_user)
      if @team.save
        @grouping = current_user.groupings.build(team_id: @team.id)
        @grouping.save
        redirect_to menus_path, notice: "チーム：#{@team.name}を登録しました！"
      else
        render :new
      end        
    else
      redirect_to menus_path, notice: "チームは1チームのみ作成できます。既にチーム：#{@team.name}が作成されています。"
    end      
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to menus_path, notice: "チーム：#{@team.name}を編集しました！"
    else
      render :edit
    end
  end

  def show
  end

  private  
  def team_params
    params.require(:team).permit(:name, :remarks)
  end   

  def set_team
    @team = current_user.grouping_team.last
  end
end