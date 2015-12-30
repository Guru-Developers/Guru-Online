# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do 
  TeamApplication.create!(first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			email: Faker::Internet.email, 
			date_of_birth: Faker::Date.backward(100),
			resume: Rails.root.join("public/uploads/tmp/blank.pdf").open)
end 

5.times do 
  Proposal.create!(	first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			email: Faker::Internet.email, 
			message: Faker::Lorem.paragraph )
end 

5.times do
  Message.create!(email: Faker::Internet.email,
		message: Faker::Lorem.paragraph )

end

