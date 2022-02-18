class PasswordResetsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # Send email
      PasswordMailer.with(user: @user).reset.deliver_now
    end

    redirect_to root_path, notice: 'If there is an account with that email, we have sent a link to reset the password.'
  end
end
