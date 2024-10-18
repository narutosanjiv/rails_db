source 'https://rubygems.org'

# Declare your gem's dependencies in rails_db.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]
gem 'foundation-rails', '>= 6.5.1.0'
gem 'sass'
gem 'jquery-rails'
gem "font-awesome-rails"
gem 'codemirror-rails'

group :development do
  gem 'quiet_assets'
end

group :assets do
  gem 'sass-rails', '>= 6.0.0'
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier'
end

gem 'pg'
gem 'mysql2'
gem 'populator'
gem 'faker'

group :test do
  gem "rspec"
  gem "sqlite3"
  gem "jquery-rails"
  gem "quiet_assets"
  if RUBY_VERSION >= '2.0'
    gem "pry"
    gem "pry-rails"
    gem "pry-byebug"
  end
end