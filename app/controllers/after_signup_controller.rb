class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :confirm_password, :set_address

  def show
    p 'showshow'
    @user = current_user
    render_wizard
  end

  def update
    p 'updateupdate'
    @user = current_user
    case step
    when :password_confirmation
      params[:user][:status] = 1
    when :set_address
      params[:user][:status] = 2
    end
    @user.attributes = user_params
    render_wizard @user
  end

  private

  def current_user
    User.find(session[:user_id])
  end

  def user_params
    params
      .require(:user)
      .permit(:status, :email, :password, :password_confirmation, :zip, :address1, :address2)
  end
end
