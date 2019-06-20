module Customers
  class Engine < ::Rails::Engine
    isolate_namespace Customers

    require 'devise'
    require 'devise_token_auth'

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
