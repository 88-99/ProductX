class MenusController < ApplicationController
  def index
    @team = current_user.grouping_team
  end

  def show
  end
end
