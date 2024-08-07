source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"
gem "jquery-turbolinks"
gem "jquery-datatables"
gem "money-rails"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2.4", ">= 5.2.4.1"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 4.3"
# Use SCSS for stylesheraets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem "devise"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
gem "webpacker", "~> 3.0"
gem "dotenv-rails", groups: [:development, :test]
gem "cloudinary", "~> 1.12.0"
gem "active_storage_validations"
gem "simple_form"
gem "mail_form"
gem "stripe"
gem "pundit"
gem "stripe_event"
gem "rqrcode", "~> 2.0"
gem "honeybadger", "~> 4.0"
gem 'invisible_captcha'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.4.0"

group :development, :test do
  gem "pry-byebug"
  gem "pry-rails"

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem "chromedriver-helper"
end

group :test do
  gem "faker", "~> 1.8", ">= 1.8.7"
  gem "factory_bot_rails", "~> 4.8", ">= 4.8.2"
  gem "rails-controller-testing", "~> 1.0.2"
  gem "rspec-rails", "~> 3.7"
  gem "shoulda", "~> 3.5"
  gem "shoulda-callback-matchers", "~> 1.1", ">= 1.1.3"
  gem "simplecov", "~> 0.15.1", require: false
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
