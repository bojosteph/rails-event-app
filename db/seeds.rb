# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "rob", email: "rob@test.com", password: "hello", full_name: "Roberto Samia")
user2 = User.create(username: "rocky", email: "rocky@test.com", password: "adrian", full_name: "Rocky Balboa")
user3 = User.create(username: "wonka", email: "wonka@test.com", password: "candy", full_name: "Willy Wonka")

event1 = user1.events.create(name: " Chattoga County Health Fair",  location: "Summerville Senior Center", description: "Education and Inservice about Hypertension with Free Health Screen", start_of_event: Faker::Date.forward(365), end_of_event: Faker::Date.forward(365))
event2 = user2.events.create(name: " Boxing for Winners not Weiners",  location: "Phillips Center", description: "Boxing Conference to use Boxing to lose weight and train not to get beat up in a fight ", start_of_event: Faker::Date.forward(365), end_of_event: Faker::Date.forward(365))
event3 = user3.events.create(name: " Candy Event", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique", start_of_event: Faker::Date.forward(365), end_of_event: Faker::Date.forward(365))

user2.rsvp_events.create(event: event1)
user1.rsvp_events.create(event: event3)
user3.rsvp_events.create(event: event2)
