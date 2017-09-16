require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Todos
  class Application < Rails::Application
    config.load_defaults 5.1
    config.generators do |g|
      g.helper false
      g.assets false
      g.template_engine = :slim
      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: true,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: false
    end
  end
end
