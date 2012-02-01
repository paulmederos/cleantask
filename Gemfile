source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
	gem 'therubyracer'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'rspec-rails', '2.6.1'
  gem 'webrat', '0.7.1'
  gem "capybara"
  gem "database_cleaner"
end

group :development do
  gem 'rspec-rails', '2.6.1'
	gem 'sqlite3'
	gem 'populator'
	gem 'faker'
end

group :production do
	gem 'pg'
end

gem 'jquery-rails'
gem 'nifty-generators', :git => 'https://github.com/ryanb/nifty-generators.git'
gem 'twitter-bootstrap-rails', :git => 'http://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'json'
gem 'will_paginate'
gem 'ios-checkboxes'

# User for Authentication and User management
gem 'devise'

# Image attachments and uploads
gem 'rmagick'
gem 'carrierwave'
gem 'fog'
gem "mocha", :group => :test
