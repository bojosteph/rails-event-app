require 'rails_helper'


describe 'navigate' do
  before do

    user = User.create(username: "rob", email: "rob@test.com", password: "hello", full_name: "Roberto Samia")
    @event = user.events.create(name: " Candy Event", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique", start_of_event: "Start Of Event : Thursday, Jul 4, at 12:00 AM", end_of_event: "End Of Event : Sunday, Aug 18, at 12:00 AM" )

  end

  it 'shows the name on the show page ' do
    visit "/events/#{@event.id}"
    expect(page).to have_css("h2", text: "Candy Event")
  end

  it 'to event pages' do
    visit event_path(@event)
    expect(page.status_code).to eq(200)
  end

  it 'show start_of_event on the show page' do
    visit event_path(@event)
    expect(page).to have_css("h4", text: "Start Of Event : Thursday, Jul 4, at 12:00 AM")
  end

  it 'show location on the show page ' do
    visit event_path(@event)
    expect(page).to have_css("h4", text: "Willy Wonka Factory")
  end

  it 'show description on the show page ' do 
    visit event_path(@event)
    expect(page).to have_css("h5", text: "For The love of Candy , Candy Making and Technique")
  end
end

  describe 'form' do 
     

    xit 'shows a new form that submits content and redirect and prints out params' do 
      
      visit new_event_path

      user = User.create(username: "rob", email: "rob@test.com", password: "hello", full_name: "Roberto Samia")
      @event = user.events.create(name: "My Event", date: "4/3/19", location: "My Event Location", description: "My Event Description")


      fill_in 'event[name]', with: "My Event"
      fill_in 'event[date]', with: "4/3/19"
      fill_in 'event[location]', with: "My Event Location"
      fill_in 'event[description]', with: "My Event Description"

      click_on "Create Event"

      expect(page).to have_content("My Event")
    end

    it 'shows an edit form that submits content, redirects and prints out params' do 
      user = User.create(username: "rob", email: "rob@test.com", password: "hello", full_name: "Roberto Samia")
      @event = user.events.create(name: " Candy Event", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique", start_of_event: "Start Of Event : Thursday, Jul 4, at 12:00 AM", end_of_event: "2019-07-27 19:38:34 UTC" )

      visit edit_event_path(@event)

      fill_in 'event[name]', with: "Updated Event"
      fill_in 'event[start_of_event]', with: "Start Of Event : Thursday, Jul 5, at 12:00 AM"
      fill_in 'event[location]', with: "Updated Location"
      fill_in 'event[description]', with: "Updated Description"

      click_on "Update Event"

      expect(page).to have_content("Updated Location")
    end

end