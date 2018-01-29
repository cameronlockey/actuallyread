OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :google_oauth2,
    Rails.application.secrets.google_oauth_client_id,
    Rails.application.secrets.google_oauth_secret,
    {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  )
end