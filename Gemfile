# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.1.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:windows, :jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

###############
# Active Record
###############
gem "active_model_serializers"

###############
# utils
###############
gem "dotenv-rails", group: [:development, :test]

###############
# Code Quality
###############
gem "rubocop", require: false, group: [:development, :test]
gem "rubocop-shopify", require: false, group: [:development, :test]
gem "rubocop-rails", require: false, group: [:development, :test]
gem "rubocop-rspec", require: false, group: [:development, :test]

###############
# Test utils
###############
gem "rspec-rails", group: [:development, :test]
gem "simplecov", group: [:test]
gem "simplecov-cobertura", group: [:test]
gem "vcr", group: [:development, :test]
gem "webmock", group: [:development, :test]
gem "faker", group: [:development, :test]
gem "factory_bot_rails", group: [:development, :test]
gem "factory_bot", group: [:development, :test]

###############
# Docs
###############
gem "rswag-api", group: [:development, :test]
gem "rswag-specs", group: [:development, :test]
gem "rswag-ui", group: [:development, :test]

###############
# HTTP
###############
gem "httparty"

###############
# Debugging
###############
gem "debug", group: [:development, :test]
gem "pry", group: [:development, :test]
gem "rdbg", "~> 0.1.0", group: [:development, :test]

###############
# Authorization
###############
gem "devise"
gem "devise-jwt"
gem "rack-cors"
