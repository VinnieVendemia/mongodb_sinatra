require 'mongo'
require "mongo_mapper"

mongo_url = 'mongodb://localhost/mongo_example_dev'
MongoMapper.connection = Mongo::Connection.from_uri mongo_url
MongoMapper.database = URI.parse(mongo_url).path.gsub(/^\//, '') #Extracts 'dbname' from the uri

puts "Hey I loaded the environment"