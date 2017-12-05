FactoryGirl.define do
  sequence :name do |n|
		"Bike #{n}"
	end
	
	factory :product do
		name 
		description "Example"
		colour "black"
		price "111"		
	end
end