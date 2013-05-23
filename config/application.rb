require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Assets should be precompiled for production (so we don't need the gems loaded then)
Bundler.require(*Rails.groups(assets: %w(development test)))

module Nathanl
  class Application < Rails::Application
    require 'website'

    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
  end
end
