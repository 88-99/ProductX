class MenusController < ApplicationController
  skip_before_action :login_required
  skip_before_action :restrict_member, only: %i[show]
  def index
    @team = current_user.grouping_team
  end

  def show
  end
end