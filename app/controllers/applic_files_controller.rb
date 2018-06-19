class ApplicFilesController < ApplicationController
  before_filter :signed_in_user
  load_and_authorize_resource
  before_filter :set_applic

  def new
    @af = ApplicFile.new
  end

  def create
    applic = Applic.find(params[:applic_id])
    @af = applic.build_applic_file(params[:applic_file])
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
    if @af.update_attributes(params[:applic_file])
      flash[:success] = t(:step3_updated_successfuly)
      redirect_to applic_applic_file_path(@applic, @af)
    else
      render 'edit'
    end
  end

  private
  def set_applic
    @applic = Applic.find(params[:applic_id])
  end
end
