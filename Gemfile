source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

group :development do

end

group :test do
  gem 'turnip'
  gem 'poltergeist'
end

group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'thin'
end

group :production, :staging do
  gem 'unicorn'
end
