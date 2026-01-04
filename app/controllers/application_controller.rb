class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = cookies[:locale] || I18n.default_locale
  end

  def current_user_identifier
    cookies[:user_identifier] ||= SecureRandom.uuid
  end
  helper_method :current_user_identifier
end
