module ApplicsHelper
  def not_antok_member?
  	!current_user.is_antok_member?
  end	

  def antok_member?
  	current_user.is_antok_member?
  end

end