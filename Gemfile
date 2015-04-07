source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Gem to deal with mongodb
gem 'mongoid', '~> 4.0.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Add locales gem
gem 'rails-i18n', '~> 4.0.0'

# Use Puma as the app server
gem 'puma', group: :production

# Use Capistrano for deployment
gem 'mina', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: :mri

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Don't mess server output with assets
  gem 'quiet_assets'
end

# Gems for testing
gem 'rspec-rails', '~> 3.1.0', group: [:development, :test]
group :test do
  gem 'capybara', '~> 2.4.4'
  gem 'selenium-webdriver', '~> 2.44.0'
  gem 'factory_girl_rails', '~> 4.5.0'
end

# For markup
gem 'bootstrap-sass', '~> 3.3.3'
