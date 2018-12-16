Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
           '702157069809-oigq4eidnji6grji7tddmaeandv4nlk4.apps.googleusercontent.com',
           '_rxblpg16qbshY-yGfbf64sd',
           name: :google
end
