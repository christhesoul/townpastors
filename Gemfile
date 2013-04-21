source 'https://rubygems.org'

gem 'rails', '3.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3', :group => [:development, :test]

group :production do
  gem 'thin'
  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

gem "rspec-rails", :group => [:test, :development]
group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "rb-fsevent", "~> 0.9.3"
end
