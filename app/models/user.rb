# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable, :omniauthable, omniauth_providers: [:google_oauth2]

  include DeviseTokenAuth::Concerns::User
end
