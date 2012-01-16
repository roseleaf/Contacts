class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])

    if @message.save
      redirect_to(message_user_path(@message.receiver_id), :notice => 'Message sent!')
    else
      redirect_to message_user_path(@message.receiver_id)
    end
  end
end
