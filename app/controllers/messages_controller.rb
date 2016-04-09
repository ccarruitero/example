class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to root_path, notice: 'Message was successfully sent.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:number, :text)
  end
end
