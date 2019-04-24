require 'rails_helper'

describe RsvpEvent do
  it 'can be created' do
    user = User.create(username: "rob", email: "rob@test.com", password: "hello", full_name: "Roberto Samia")
    event = Event.create(name: " Candy Event", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique", start_of_event: "2019-07-27 16:28:34 UTC", end_of_event: "2019-07-27 19:38:34 UTC" )
    rsvp_event = user.rsvp_events.create(event: event)
    expect(rsvp_event).to be_valid
  end


  describe " User Associations" do 
    it { should belong_to(:user) }
  end
  
  describe "Event Associations" do
    it { should belong_to(:event)}
  end
    
end