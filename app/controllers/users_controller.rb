class UsersController < ApplicationController

  before_action :set_user, only: [:create_session]

  def sign_up
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session["user_id"] = @user.id
      return redirect_to dashboard_path, notice: "Account successfully created!"
    else
      return redirect_to sign_in_user_path, notice: "Some error occurred while saving details. Please try again!"
    end
  end

  def sign_in #Shows sign in form only
    (return redirect_to dashboard_path, notice: "Already Signed In!") if current_user
  end

  def create_session
    session["user_id"] = @user.id
    return redirect_to dashboard_path, notice: "Logged in successfully!"
  end

  def sign_out
    session["user_id"] = nil
    return redirect_to sign_in_user_path, notice: "Logged out successfully!"
  end


  private

  def set_user
    @user = User.with_details(user_params)
    unless @user
      return redirect_to sign_in_user_path, notice: "Invalid details. Please try again!"
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :disabled)
  end

end