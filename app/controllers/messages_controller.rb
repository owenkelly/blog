class MessagesController < ApplicationController

  def new 
    @message = Message.new
  end


  def create
    @message = Message.new(params[:message])
    if @message.deliver
      flash.now[:notice] = "Thank you for your message!"
      redirect_to posts_path
    else
      flash.now[:notice] = "Unable to deliver message. Please fill out all the boxes!"
      redirect_to new_message_path
    end
  end
  
end
