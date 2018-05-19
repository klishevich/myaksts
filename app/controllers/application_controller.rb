class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { locale: I18n.locale }
  end   

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
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
