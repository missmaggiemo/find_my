source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.2'
gem 'pg', '0.15.1'
# for postgres
gem 'bootstrap-sass'
# pretty app with bootstrap
gem 'bcrypt-ruby', '3.1.2'
# for authentication
gem 'will_paginate', '3.0.4'
# pagination-- only 30 or so users show up on the index page at a time
# gem 'bootstrap-will_paginate', '0.0.9'
# pretty pagination
gem 'mail', '2.5.4'
# emails

gem 'sass', '3.2.13'
gem 'sass-rails', '4.0.1'
# sass for css
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
# coffescript
gem 'jquery-rails', '3.0.4'
# jquery

gem 'underscore-rails'
# underscore

gem 'turbolinks', '1.1.1'
# loads all javascript
gem 'jbuilder', '1.0.2'
# JSON builder
gem 'sprockets', '2.11.0'

gem 'oauth', '0.4.7'
gem 'addressable'
gem 'rest-client'
gem 'devise'
gem 'friendly_id'


group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
end

group :development, :test do
  # gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'
  # rspec for testing
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'pry-rails'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  # for rspec testing
  gem 'growl', '1.0.3'
  # for guard-rspec
end

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'rails_12factor', '0.0.2'
  gem 'rails_serve_static_assets'
end
