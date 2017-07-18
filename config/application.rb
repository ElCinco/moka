require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Moka
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # google tracking
    config.middleware.use(Rack::Tracker) do
      handler :google_analytics, { tracker: 'UA-102041854-1', async: '1' }
    end

    #fb tracking
    config.middleware.use(Rack::Tracker) do
      handler :facebook, { id: '151609688731241' }
    end
  end
end
