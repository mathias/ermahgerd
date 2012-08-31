source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'modernizr-rails'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

gem 'bcrypt-ruby', '~> 3.0.0'
gem 'decent_exposure'
gem 'formtastic'
gem 'jquery-rails'
gem 'haml-rails'

group :development do

end

group :test do
  gem 'database_cleaner'
  gem 'turnip'
  gem 'poltergeist'
end

group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'thin'
end

group :production, :staging do
  gem 'unicorn'
end
