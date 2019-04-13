require 'rails_helper'


RSpec.describe Event, :type => :model do 
    user = User.create(username: "rocky", email: "rocky@test.com", password: "adrian", full_name: "Rocky Balboa")
    subject {user.events.create(name: " Candy Event", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique", start_of_event: "Start Of Event : Thursday, Jul 4, at 12:00 AM", end_of_event: "End Of Event : Sunday, Aug 18, at 12:00 AM" )}

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end

    it "is not valid without a name" do 
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a  start date" do 
        subject.start_of_event = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a location" do
        subject.location = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a description" do 
        subject.description = nil 
        expect(subject).to_not be_valid 
    end

    describe "Associations" do 
        it { should belong_to(:user) }
        
    end

end