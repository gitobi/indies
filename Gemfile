source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.1'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'gon'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# For frontend
gem 'normalize-rails'
gem 'bourbon'
gem 'neat'
gem 'slim-rails'
gem 'simple_form'
gem 'puma'

# bootstrap
gem 'bootstrap-sass'
gem 'autoprefixer-rails'

# bootstrap theme
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'twitter-bootswatch-rails', '~> 3.1.1'
gem 'twitter-bootswatch-rails-helpers'
gem 'execjs'
gem 'less-rails'
#bin/rails g bootswatch:install united
#bin/rails g bootswatch:import united
#bin/rails g bootswatch:layout united

# markdown
gem 'pagedown-bootstrap-rails'
gem 'font-awesome-sass'
gem "redcarpet"

# testing
gem 'factory_girl_rails'
gem 'seed-fu'

### account / sessions
gem 'activerecord-session_store'
# omniauth
gem 'omniauth'
gem 'omniauth-twitter'
gem 'settingslogic'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
  gem 'dotenv-rails'
end

group :development do
  gem 'guard-rspec', require: false
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
  gem 'rails-footnotes'

  #debug
  gem "bullet"
end

group :production do
    gem 'rails_12factor'
end
