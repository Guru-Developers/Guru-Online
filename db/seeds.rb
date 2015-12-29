# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TeamApplication.create!(first_name: "Kammy",
			last_name: "Liu",
			email: "kammy@example.com",
			date_of_birth: Date.today,
			attends_unc: true,
			resume: "insert file location here")

Proposal.create!(first_name: "Kammy",
			last_name: "Liu",
			email: "kammy@example.com",
			message: "Awesome startup things")

Message.create!(email: "kammy@example.com",
			message: "I have a question about things?")



