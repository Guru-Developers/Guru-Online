class MessagesController < ApplicationController

  before_action :restrict_to_logged_in, only: [:index, :show, :destroy]

  def index
    @messages = Message.paginate(page: params[:page])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      NotificationMailer.contact(@message).deliver_now
      flash.now[:success] = "Message sent"
    end
    render 'new'
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    Message.find(params[:id]).destroy
    flash[:success] = "Message deleted"
    redirect_to messages_path
  end


  private
    
    def message_params
      params.require(:message).permit(:email, :message)
    end
end
