class ApplicsController < ApplicationController
  before_filter :signed_in_user
  before_filter :have_no_applic, only: [:new, :create]
  load_and_authorize_resource 
  # before_filter :admin_user, only: :index

  def index
    @applics=Applic.limit(100).order("id")
    authorize! :index, @applics
    respond_to do |format|
      format.html
      format.csv { render text: @applics.to_csv }
      format.xls #{ send_data @applics.to_csv(col_sep: "\t") }
    end
  end

  def new
    # tel = current_user.kofst_applic.mobile + " / " + current_user.kofst_applic.job_phone
    @applic = current_user.build_applic(fio: current_user.name, email: current_user.email)
  end

  def create
    @applic = current_user.build_applic(params[:applic])
    if @applic.save
      @applic.deliver
      flash[:success] = t(:step2_application_sent)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @applic = Applic.find(params[:id])
    # authorize! :show, @applic
    pdf = ApplicReport.new
    pdf.generate(@applic)
    respond_to do |format|
      format.html
      format.pdf do
        send_data pdf.render, filename: "applic#{@applic.id}.pdf", type: "application/pdf", disposition: "inline"
      end          
    end
  end

  def edit
  	@applic=Applic.find(params[:id])
  end

  def update
    @applic = Applic.find(params[:id])
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
