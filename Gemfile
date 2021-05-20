# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem "rails", "~> 6.0.3", ">= 6.0.3.2"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.3"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.2", require: false
gem "slim"
gem "html2slim"
gem "sorcery"
gem "rubocop-rails", require: false
gem "rubocop-performance", require: false
gem "rails-i18n", "~> 6.0.0"
gem "faraday"
gem "bulma-rails"
gem "foreman"
gem "draper"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails"
  gem "factory_bot_rails"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "webmock"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "letter_opener_web"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
