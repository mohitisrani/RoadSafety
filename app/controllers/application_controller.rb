class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @user = User.find_by_id(session["user_id"])
  end

  def is_logged_in
  	!current_user.nil?
  end

end
