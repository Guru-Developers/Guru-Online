class MessagesController < ApplicationController

  def index
    @messages = Message.all
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

  private
    
    def message_params
      params.require(:message).permit(:email, :message)
    end
end
