class ChatController < ApplicationController
require 'json'

  def create
    data = params[:data]
    @chat = Chat.new(JSON.parse(data))
    
    respond_to do |format|
      if @chat.save
        flash[:notice] = 'Chat was successfully created.'
        render nothing: true, status: 200
      else
        format.json  { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def index
    @chat = Chat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chat }
    @title = @chat.name
    end
  end 
end