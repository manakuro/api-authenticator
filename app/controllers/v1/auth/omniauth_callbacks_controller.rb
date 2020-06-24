class V1::Auth::OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController
  include Devise::Controllers::Rememberable

  def omniauth_success
    super do |resource|
      user = User.find(resource.id)
      render json: user and return
    end
  end
end
