class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if message.save
      redirect_to chatroom_path(@chatroom, anchor:"message-#{message.id}")
    else
      render " chatroom/show"
    end
  end

  private

  def message_params
    params.require(:messages).permit(:content)
  end
end
