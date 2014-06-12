class MessagesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    # authorize! :index, @message, :message => 'Not authorized as an administrator.'
    @messages=Message.all
  end

  def new
    @message=Message.new  
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      # @message.deliver
      Resque.enqueue(DeliverMessages, @message.title, @message.body, @message.send_type,@message.email4test)
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
      # @message.deliver
      Resque.enqueue(DeliverMessages, @message.title, @message.body, @message.send_type,@message.email4test)
      flash[:success] = 'Message was successfuly updated'
      redirect_to @message
    else
      render 'edit'
    end    
  end

end
