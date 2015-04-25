class AntokMembersController < ApplicationController

  def index
    @members=AntokMember.limit(100).order("id")
    respond_to do |format|
      format.html
    end
  end

end
