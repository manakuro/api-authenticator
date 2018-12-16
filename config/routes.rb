Rails.application.routes.draw do
  mount_devise_token_auth_for User.name, at: 'v1/auth', controllers: {
    registrations: 'v1/auth/registrations',
    omniauth_callbacks: 'v1/auth/omniauth_callbacks'
  }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
