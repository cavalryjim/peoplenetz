source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'jquery-rails', '~> 2.0.0'
gem 'thin', '~> 1.3.1'
gem 'simple_form', '~> 2.0.1'
gem 'country_select', '~> 0.0.2'
gem 'copycopter_client', '2.0.1'
gem 'activeadmin', '~> 0.4.3'
gem 'formtastic', '~> 2.1.1'
gem 'recaptcha', :require => 'recaptcha/rails'
# JDavis: including the most recent version of the twitter-bootstrap-rails gem to fix a production error.
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

group :development do
  gem 'mysql2', '0.3.11'
  gem 'rspec-rails', '2.9.0'
  gem 'annotate', '~> 2.4.1.beta'
  #gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  gem 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'execjs', '~> 1.3.0'
  gem 'therubyracer', '~> 0.10.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  # JDavis: moving the twitter-bootstrap-rails gem outside of assets to fix a production environment error..
  #gem 'twitter-bootstrap-rails', '~> 2.0.6' # JDavis: moved from assets group to fix a Heroku error.
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'capybara', '1.1.2'
end


# group :production do
  # gem 'pg', '0.12.2'
# end



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
