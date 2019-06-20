source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.3'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

if ENV["ENGINE"].nil?
  if Dir.pwd.split("/")[-2] == "engines"
    ENV["ENGINE"] = Dir.pwd.split("/").last
  end
end

Dir.glob(File.expand_path("../engines/*", __FILE__)).each do |path|
  engine = File.basename(path)
  gem engine, :path => "engines/#{engine}", :require => (ENV["ENGINE"].nil? || ENV["ENGINE"] == engine)
end

gem 'noloquiero', path: 'engines/noloquiero'