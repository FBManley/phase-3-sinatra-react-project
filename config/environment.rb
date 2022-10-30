# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'

# DB, that is equal to a hash that contains our connection to the database. Gives us access tp the DB constant and the database connection
DB = { conn: SQLite3::Database.new("db/user_database.db")}