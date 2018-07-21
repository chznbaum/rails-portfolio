require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'active_storage/engine'
require 'sprockets/railtie'
require 'dotenv-rails'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsPortfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.require_master_key = true
    config.middleware.use Rack::Attack
    config.generators do |g|
      g.orm             :active_record
      g.template_engine :haml
      g.stylesheets     false
      g.javascripts     false
    end
    config.assets.paths << "#{Rails.root}/app/assets/"
    config.eager_load_paths << "#{Rails.root}/lib"
    config.secret_key_base = Rails.application.credentials.dig(Rails.env.to_sym, :secret_key_base)
    config.sass.preferred_syntax = :sass
  end
end
