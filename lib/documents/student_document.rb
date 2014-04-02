require 'mongo_mapper'

class Student 
	include MongoMapper::Document
  	key :name, String
    key :uid, String 
    key :grade, String 
    key :birthday, Time
    key :class_list, Array
end 