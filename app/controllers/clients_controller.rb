class ClientsController < ApplicationController
  before_action :set_client, only: %i[ edit update ]

  def index
    @clients = Client.all # .order(created_at: :desc)
  end

  def new
    @client = Client.new
  end

  def create
    @client = current_user.grouping_team.last.clients.build(client_params)
    # @client = Client.new(client_params)
    # @client.user_id = current_user.id
    if @client.save
      redirect_to edit_client_path(@client.id), notice: "得意先を登録しました！"
    else
      render :new
    end    
  end
  
  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to edit_client_path(@client.id), notice: "得意先を編集しました！"
    else
      render :edit
    end
  end

  def show
    
  end

  def destroy
    
  end

  private
  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:code, :name, :phone_number, :fax_number, :address, :remarks)
  end
end
