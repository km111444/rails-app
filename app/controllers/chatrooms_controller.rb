class ChatroomsController < ApplicationController
  # def index
  #   @chatrooms = Chatroom.where(user_id == 1)
  # end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
