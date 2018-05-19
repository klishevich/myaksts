class FindAntokMembersController < ApplicationController
  def index
    if params[:fio]
      search_str = params[:fio].mb_chars.downcase.strip
      @members = AntokMember.where("lower(fio) = ?", search_str)
  else
      @members=[]
  end
    respond_to do |format|
      format.html
    end 
  end

    # if params[:term]
    #   search_str = "%#{params[:term].downcase}%"

    #   locale = I18n.locale.to_s
    #   Rails.logger.info("!!!! #{locale}")
    #   books = SearchProduct.where("lower(concat_name) like ?
    #     and locale = ?", search_str, locale).limit(10).order("concat_name")    
    # else
    #   books = SearchProduct.all
    # end
 
end
