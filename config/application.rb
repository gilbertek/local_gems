require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LocalGems
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #
    config.time_zone = 'Eastern Time (US & Canada)'

    config.sass.preferred_syntax = :sass

    config.generators do |g|
      g.assets false
      g.decorators false
      g.helper false
      g.helper_specs false
      g.view_specs false
    end

    # config.active_record.primary_key = :uuid
  end
end
