class MessagesController < ApplicationController
  def new
    @msg = Message.new
  end

  def create
  end

  private

  def msg_params

  end
end
