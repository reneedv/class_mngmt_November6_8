class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  

  def after_sign_in_path_for user
    '/students/new'
  end

private
  def set_locale
    #locales = request.headers["Accept-Language"].split(';')[0].split(',')
    #I18n.locale = locales.last
  end
end
