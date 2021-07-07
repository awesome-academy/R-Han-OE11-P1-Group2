# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
    ENV['794188029463-gblsgao7b2g28jp4uq23qgd63lmttpqk.apps.googleusercontent.com'],
    ENV['yBPmrRBkaP17TmiGAEOZHXNd'],
    scope: "email"
end
