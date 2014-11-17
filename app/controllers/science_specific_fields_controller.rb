class ScienceSpecificFieldsController < ApplicationController
  def index
  	if params[:term]
  		par = params[:term].to_i
  		ssf = ScienceField.find(par).science_specific_fields
  	else
  		ssf = []
  	end
    list = ssf.map {|u| Hash[ id: u.id, name: u.name]}
    render json: list  	
  end
end
 