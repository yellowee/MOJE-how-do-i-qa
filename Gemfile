source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.2'
gem 'pg', '>= 0.18.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'jquery-rails'
gem 'uglifier'
gem 'coffee-rails', '~> 5.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'decent_exposure'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'simple_form'
gem 'bootstrap-sass'
gem 'devise'
gem 'haml-rails'
gem 'sprig'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'bogus', require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'spring-commands-rspec'
  gem 'webdrivers'
end

group :development do
  gem 'web-console'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard-rspec', require: false
  gem 'thin'
end

group :test do
  gem 'shoulda-matchers'
  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
