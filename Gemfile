source 'https://rubygems.org'
 
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
#gem for authentication
gem 'devise'
#bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass', '~> 3.3.6'
#Gem to make it easy to securely configure Rails applications. Figaro parses a Git-ignored YAML file in your application and loads its values into ENV.
gem 'figaro'
#A library for generating fake data such as names, addresses, and phone numbers.
gem 'faker'
#Provides Sprockets implementation for Rails 4.x (and beyond) Asset Pipeline.
gem 'sprockets-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 3.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails' 
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

gem 'autoprefixer-rails' 
 

#group is a method that is provided by Bundler.  :production is just a name of a group.  
group :production do
  #Pg is the Ruby interface to the PostgreSQL
  gem 'pg'
  #This gem enables serving assets in production and setting your logger to standard out, both of which are required to run a Rails 4 application on a twelve-factor
  gem 'rails_12factor'
end
 
 
group :development do
  #This module allows Ruby programs to interface with the SQLite3 database engine (www.sqlite.org). You must have the SQLite engine installed in order to build this module.
  gem 'sqlite3'
   # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :development, :test do 
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
 
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

#Pundit provides a set of helpers which guide you in leveraging regular Ruby classes and object oriented design patterns to build a simple, robust and scaleable authorization system.
gem 'pundit'