source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootstrap'
gem 'carrierwave', '~> 1.2.2'
gem 'carrierwave-base64', '~> 2.8.0'
gem 'carrierwave-i18n', '~> 0.2.0' 
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'font-awesome-sass'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'kaminari'
gem 'mini_racer', '~> 0.2.14'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4', '>= 5.2.4.3'
gem 'ransack'
gem 'sass'
gem 'sass-rails', '~> 5.0'
gem 'sprockets'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails', '~> 4.11'
  gem 'rspec-rails', '~> 3.7'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production, :staging do
  gem 'unicorn', '~> 5.4.1'
end

group :production do
  gem 'fog-aws'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
