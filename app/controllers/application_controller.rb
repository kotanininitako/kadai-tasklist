class ApplicationController < ActionController::Base
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    if !current_user
      redirect_to login_url
    end
  end
end
