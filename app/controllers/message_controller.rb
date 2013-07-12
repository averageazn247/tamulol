class MessageController < ApplicationController
  def new
    @message=Message.new
  end
    def index
    @messages = Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
      format.csv { send_data @messages.to_csv }
      format.xls
    end
  end
  def edit
    @message=Message.find(params[:id])
    
  end
  
end
