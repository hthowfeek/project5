require 'faker'
namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Host.create!(first_name: "Example User", 
				 last_name: "User", 
				 email: "Userhope@cmu.edu", 
				 username: "exampleuser",
				 password: "foobar", 
				 password_confirmation: "foobar" )
	admin.toggel!(:admin)
	
	99.times do |n|
		first_name = Faker::Name.name
		last_name = Faker::Name.name
		email = "examplem-#{n+1}@cmu.edu"
		password = "password"
		Host.create!( first_name: first_name,
					  last_name: last_name,
					  password: password,
					  password_confirmation: password)
	end
	end
end		
					