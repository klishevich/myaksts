class MessagesController < ApplicationController
  
  def index
    @messages=Message.all
  end

  def new
    @message=Message.new  
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      flash[:success] = 'Message was successfully created'
      redirect_to @message
    else
      render action: "new"
    end    
  end

  def show
    @message = Message.find(params[:id])   
  end

  def edit
    @message=Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    if @message.update_attributes(params[:message])
      flash[:success] = 'Message was successfuly updated'
      redirect_to @message
    else
      render 'edit'
    end    
  end
end
