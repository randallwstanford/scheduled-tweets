class OmniauthCallbacksController < ApplicationController
  def twitter
    Rails.logger.info auth
    Current.user.twitter_accounts.create(
      name: auth.info.name,
      username: auth.info.nickname,
      image: auth.info.image,
      token: auth.info.token,
      secret: auth.info.secret
    )
    redirect_to root_path, notice: 'Successfully connected your account'
  end

  def auth
    request.env['omniauth.auth']
  end
end
