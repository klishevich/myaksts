class ApplicsController < ApplicationController
  before_filter :signed_in_user
  before_filter :have_no_applic, only: [:new, :create]
  load_and_authorize_resource only: :show
  # before_filter :admin_user, only: :index

  def index
    @applics=Applic.limit(100).order("id desc")
  end

  def new
    @applic = current_user.build_applic(email: current_user.email, fio: current_user.name)
  end

  def create
    @applic = current_user.build_applic(params[:applic])
    if @applic.save
      @applic.deliver
      flash[:success] = t(:application_sent)
      redirect_to @applic
    else
      render 'new'
    end
  end

  def show
      @applic = Applic.find(params[:id])
    # pdf = Prawn::Document.new
    # pdf.text "Hello World"
    # pdf.render_file "assignment.pdf"
    # pdf = ApplicReport1.new
    # pdf.generate(@applic)
    respond_to do |format|
      format.html
      # format.pdf do
        # send_data pdf.render, filename: "applic#{@applic.id}.pdf", type: "application/pdf", disposition: "inline"
 #     end          
    end
  end

  def edit
  	@applic=current_user.applic
  end

  def update
    @applic = current_user.applic
    if @applic.update_attributes(params[:applic])
      flash[:success] = t(:application_updated_successfuly)
      redirect_to @applic
    else
      render 'edit'
    end
  end

  def signed_in?
    !current_user.nil?
  end

  def signed_in_user
    unless signed_in?
      redirect_to root_path, notice: t(:please_sign_in)
    end
  end 

  def have_applic
    current_user.applic
  end

  def have_no_applic
    unless !have_applic
      redirect_to current_user.applic, notice: t(:you_already_have_application)
    end
  end   

end
