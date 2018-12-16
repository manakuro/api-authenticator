class V1::Auth::OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController
  include Devise::Controllers::Rememberable

  def omniauth_success
    super do
      render json: {}, status: :ok and return
    end
  end
end
