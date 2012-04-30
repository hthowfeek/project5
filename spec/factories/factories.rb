FactoryGirl.define do
	factory :host do
		first_name				"John"
		last_name				"Martin"
		email					"jmartin@gtalk.com"
		username				"johnmartin"
		password				"foobar1"
		password_confirmation	"foobar1"
	end
	
	sequence :email do |n|
		"person-#{n+1}@cmu.edu"
	end
end