$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "customers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "customers"
  spec.version     = Customers::VERSION
  spec.authors     = ["Guillermo Leopold"]
  spec.email       = ["gleopold@toptierlabs.com"]
  spec.homepage    = "http://localhost:3000"
  spec.summary     = " Summary of Customers."
  spec.description = " Description of Customers."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = " Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
  spec.add_dependency 'devise', '>= 4.4.3', '< 4.8.0'
  spec.add_dependency 'devise_token_auth', '~> 1.1.0'
  spec.add_dependency 'pg'
  spec.add_development_dependency 'rspec-rails'
end
