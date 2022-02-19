class MenusController < ApplicationController
  def index
    @team = current_user.team
  end
end
