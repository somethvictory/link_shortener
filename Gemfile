source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'sqlite3'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'jquery-rails',               '~> 4.3.1'
gem 'jquery-ui-rails',            '~> 6.0.1'
gem 'uglifier',                   '~> 3.2.0'
gem 'haml',                       '~> 5.0.1'
gem 'devise',                     '~> 4.3'
gem 'active_model_serializers',   '~> 0.10.6'
gem 'react-rails',                '~> 2.2'

group :development, :test do
  gem 'pry'
  gem 'spring'
  gem 'ffaker'
  gem 'launchy'
  gem 'capybara'
  gem 'poltergeist', '~> 1.15'
  gem 'rspec-rails', '~> 3.6'
  gem 'guard-rspec'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1'
  gem 'json_spec', '~> 1.1.4'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
