require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shop
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.assets.precompile += %w( bootstrap.min.css )
    config.assets.precompile += %w( font-awesome.css )
    config.assets.precompile += %w( stylesheet.css )
    config.assets.precompile += %w( responsive.css )
    config.assets.precompile += %w( owl.carousel.css )
    config.assets.precompile += %w( owl.transitions.css )
    config.assets.precompile += %w( jquery-2.1.1.min.js )
    config.assets.precompile += %w( bootstrap.min.js )
    config.assets.precompile += %w( jstree.min.js )
    config.assets.precompile += %w( template.js )
    config.assets.precompile += %w( common.js )
    config.assets.precompile += %w( global.js )
    config.assets.precompile += %w( owl.carousel.min.js )
    config.assets.precompile += %w( jquery.parallax.js )


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
