class ApplicationController < ActionController::Base
  private

  def current_user_identifier
    cookies[:user_identifier] ||= SecureRandom.uuid
  end
  helper_method :current_user_identifier
end
