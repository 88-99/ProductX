class TopsController < ApplicationController
  skip_before_action :login_required
  skip_before_action :restrict_member
  def index
  end
end