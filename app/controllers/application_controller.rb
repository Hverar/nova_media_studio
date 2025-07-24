class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  private

  def set_locale
    locale = params[:locale] || cookies[:locale] || I18n.default_locale
    I18n.locale = locale
    cookies[:locale] = locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
