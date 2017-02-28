class MessagesController < ApplicationController

def index
  @messages = Message.all
end

def new
  @message = Message.new
  @user = current_user
  @user2 = User.all.find(2) 
end

def create
  @message = Message.new(message_params)
  if @message.save
    flash[:notice] = "Sent!"
    redirect_to messages_path
  else
    render 'new'
  end
end

def show
  @message = Message.find(params[:id])
end

private

 def message_params
   params.require(:message).permit(:to, :from, :body)
 end
end
