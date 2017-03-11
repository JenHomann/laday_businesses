require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LadayBusinesses
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.assets.paths << Rails.root.join("app", "assets", "fonts")

    # ::APP_CONFIG = YAML.load(File.read("#{Rails.root}/config/app_config.yml"))[Rails.env]
    config.autoload_paths += %W(#{config.root}/lib)
    # config.action_mailer.default_url_options = APP_CONFIG[:action_mailer][:default_url_options].symbolize_keys
    config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = APP_CONFIG[:action_mailer][:smtp_settings].symbolize_keys
    config.generators do |g|
      g.helper false
      g.assets false
    end
  end
end
