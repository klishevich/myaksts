class AntokMembersController < ApplicationController
  before_filter :signed_in_user
  load_and_authorize_resource

  def index
    @members=AntokMember.limit(500).order("id")
    authorize! :index, @members
    respond_to do |format|
      format.html
    end
  end

  def new
    @member = AntokMember.new
  end

  def create
    @member = AntokMember.new(params[:antok_member])
    if @member.save
      flash[:success] = t(:saved_successfuly)
      redirect_to @member
    else
      render 'new'
    end
  end

  def show
    @member = AntokMember.find(params[:id])
    respond_to do |format|
      format.html        
    end
  end

  def edit
    @member=AntokMember.find(params[:id])
  end

  def update
    @member = AntokMember.find(params[:id])
    if @member.update_attributes(params[:antok_member])
      flash[:success] = t(:saved_successfuly)
      redirect_to @member
    else
      render 'edit'
    end
  end
end
