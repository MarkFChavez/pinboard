Rails.application.config.middleware.use OmniAuthL::Builder do
  provider :facebook, "key", "secret"
end
