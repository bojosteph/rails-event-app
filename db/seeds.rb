# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "rob", email: "rob@test.com", password: "hello", full_name: "Roberto Samia")
User.create(username: "rocky", email: "rocky@test.com", password: "adrian", full_name: "Rocky Balboa")
User.create(username: "wonka", email: "wonka@test.com", password: "candy", full_name: "Willy Wonka")

Event.create(name: " Chattoga County Health Fair", date: "3/7/19", location: "Summerville Senior Center", description: "Education and Inservice about Hypertension with Free Health Screen")
Event.create(name: " Boxing for Winners not Weiners", date: "7/7/19", location: "Phillips Center", description: "Boxing Conference to use Boxing to lose weight and train not to get beat up in a fight ")
Event.create(name: " Candy Event", date: "4/1/19", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique")

RsvpEvent.create(event_id: 1, user_id: 3)
RsvpEvent.create(event_id: 2, user_id: 1)
RsvpEvent.create(event_id: 3, user_id: 2)
