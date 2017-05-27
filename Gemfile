source 'https://rubygems.org'

gem 'rails', '4.2.8'
gem 'devise'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'figaro'
gem 'faker'
gem 'sprockets-rails'
gem 'sass-rails', '>= 3.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'autoprefixer-rails'
#Pundit provides a set of helpers which guide you in leveraging regular Ruby classes and object oriented design patterns to build a simple, robust and scaleable authorization system.
gem 'pundit'
#group is a method that is provided by Bundler.  :production is just a name of a group.
group :production do
  #Pg is the Ruby interface to the PostgreSQL
  gem 'pg'
  #This gem enables serving assets in production and setting your logger to standard out, both of which are required to run a Rails 4 application on a twelve-factor
  gem 'rails_12factor'
end


group :development do
  #This gem allows Ruby programs to interface with the SQLite3 database engine (www.sqlite.org). You must have the SQLite engine installed in order to build this module.
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

