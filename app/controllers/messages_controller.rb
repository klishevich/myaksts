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
      case @message.send_type
      when "email_test"
        Resque.enqueue(DeliverMessages, @message.title, @message.body, @message.email4test)
      when "email_real"
        Applic.all.each do |applic|
          Resque.enqueue(DeliverMessages, @message.title, @message.body, applic.email)
        end
      end 
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
    Rails.logger.info('31415926')
    Rails.logger.info(params[:message][:send_type])
    Rails.logger.info(@message.send_type)    
    send_type_changed = @message.send_type!=params[:message][:send_type]
    if @message.update_attributes(params[:message])
      # @message.deliver
      if (send_type_changed)
        case @message.send_type
        when "email_test"
          Resque.enqueue(DeliverMessages, @message.title, @message.body, @message.email4test)
        when "email_real"
          Applic.all.each do |applic|
            Resque.enqueue(DeliverMessages, @message.title, @message.body, applic.email)
          end
        end       
      end
      flash[:success] = 'Message was successfuly updated'
      redirect_to @message
    else
      render 'edit'
    end    
  end

end
