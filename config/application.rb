require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NagekiApp
  class Application < Rails::Application
    config.hosts << '56ec0d73f038438bbf4aa2fb5ffa7f42.vfs.cloud9.ap-northeast-1.amazonaws.com'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
