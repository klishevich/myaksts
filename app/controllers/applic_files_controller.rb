class ApplicFilesController < ApplicationController
  before_filter :signed_in_user
  # before_filter :have_no_applic, only: [:new, :create]
  # load_and_authorize_resource

  def new
    @af = ApplicFile.new
  end

  def create
    @af = current_user.applic.build_applic_file(params[:applic_file])
    if @af.save
      flash[:success] = t(:step3_files_sent)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @af = ApplicFile.find(params[:id])
    respond_to do |format|
      format.html         
    end
  end

  def edit
    @af=ApplicFile.find(params[:id])
  end

  def update
    @af = ApplicFile.find(params[:id])
    if @af.update_attributes(params[:applic])
      flash[:success] = t(:step3_updated_successfuly)
      redirect_to @af
    else
      render 'edit'
    end
  end
end
