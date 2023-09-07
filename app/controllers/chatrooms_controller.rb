class ChatroomsController < ApplicationController
  def show
    @pharmacy = Pharmacy.find(params[:pharmacy_id])
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
