require "font-awesome-rails"
require "foundation-rails"
require "sass"
require "sass-rails"
require "jquery-rails"
require 'codemirror-rails'

module RailsDb
  # Custom require relative that work with older rubies also
  def self.require_relative(path)
    full_path = File.expand_path(path, File.dirname(__FILE__))
    Kernel.require(full_path)
  end

  # gem in enabled
  mattr_accessor :enabled
  @@enabled = true

  # automatic engine routes mouting
  mattr_accessor :automatic_routes_mount
  @@automatic_routes_mount = true

  # set tables which you want to hide ONLY
  mattr_accessor :black_list_tables
  @@black_list_tables = []

  # set tables which you want to show ONLY
  mattr_accessor :white_list_tables
  @@white_list_tables = []

  # Enable http basic authentication
  mattr_accessor :http_basic_authentication_enabled
  @@http_basic_authentication_enabled = false

  # Enable http basic authentication
  mattr_accessor :http_basic_authentication_user_name
  @@http_basic_authentication_user_name = 'rails_db'

  # Enable http basic authentication
  mattr_accessor :http_basic_authentication_password
  @@http_basic_authentication_password = 'password'

  def self.setup
    yield(self)
  end

end

require "rails_db/engine"

RailsDb.require_relative("rails/routes")