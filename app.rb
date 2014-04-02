require 'sinatra'
require './lib/documents/student_document.rb'
load 'config/environment.rb'

get '/' do 
	"Hello World"
end 

get '/create_student' do 
	student = Student.create(:name => "Tom Jones" , :uid => "111111",
	 :grade => "Sophmore", :birthday => Time.now , :class_list => ["CMSC414" , "CMSC434"])

	student.save

	return student.to_json
end 

get '/get_student' do 

	name = params["name"]
	student = Student.where({:name => name})

	return student.to_json

end 


