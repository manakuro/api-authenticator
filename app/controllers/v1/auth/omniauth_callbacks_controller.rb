class V1::Auth::OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController
  include Devise::Controllers::Rememberable

  def omniauth_success
    super do |resource|
      render json: resource.as_json and return
    end
  end
end
