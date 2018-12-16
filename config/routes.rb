Rails.application.routes.draw do
  mount_devise_token_auth_for User.name, at: 'v1/user', controllers: {
    registrations: 'v1/user/registrations',
    omniauth_callbacks: 'v1/user/omniauth_callbacks'
  }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
