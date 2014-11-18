class KofstApplicsController < ApplicationController
  before_filter :signed_in_user
  # before_filter :have_no_applics, only: [:new, :create]
  load_and_authorize_resource 
  # before_filter :admin_user, only: :index

  def index
    @applics=KofstApplic.limit(100).order("id")
    # authorize! :index, @applics
    respond_to do |format|
      format.html
      # format.csv { render text: @applics.to_csv }
      # format.xls #{ send_data @applics.to_csv(col_sep: "\t") }
    end
  end

  def new
    @applic = current_user.kofst_applics.build(job_email: current_user.email, 
      english_name: current_user.name, country: "Russia", kofst_association: "AKSTS Russia", 
      nationality: "Russian Federation")
  end

  def create
    params[:kofst_applic][:applic_language] = I18n.locale.to_s
    @applic = current_user.kofst_applics.build(params[:kofst_applic])
    if @applic.save
      # @applic.deliver
      # flash[:success] = t(:application_sent)
      redirect_to @applic
    else
      render 'new'
    end
  end

  def show
    @applic = KofstApplic.find(params[:id])
    # authorize! :show, @applic
    # pdf = ApplicReport.new
    # pdf.generate(@applic)
    respond_to do |format|
      format.html
      # format.pdf do
      #   send_data pdf.render, filename: "applic#{@applic.id}.pdf", type: "application/pdf", disposition: "inline"
      # end          
    end
  end

  def edit
  	@applic=KofstApplic.find(params[:id])
  end

  def update
    @applic = KofstApplic.find(params[:id])
    if @applic.update_attributes(params[:kofst_applic])
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

  # def have_applic
  #   current_user.applic
  # end

  # def have_no_applic
  #   unless !have_applic
  #     redirect_to current_user.applic, notice: t(:you_already_have_application)
  #   end
  # end   

end
