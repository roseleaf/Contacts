class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])

    if @message.save
      redirect_to(message_user_path(@message.receiver_id), :notice => 'Message sent!')
    else
      @user = User.find(@message.receiver_id)
      @messages = Message.where("(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)", current_user.id, @user.id, @user.id, current_user.id)
      render :template => 'users/message' #, message_user_path(@message.receiver_id)
    end
  end
end