require 'rails_helper'

describe 'navigate' do
  before do
    @event = Event.create(name: " Candy Event", date: "4/1/19", location: "Willy Wonka Factory", description: "For The love of Candy , Candy Making and Technique")
  end

  it 'shows the name on the show page in a h2 tag' do
    visit "/events/#{@event.id}"
    expect(page).to have_css("h2", text: "Candy Event")
  end

  it 'to event pages' do
    visit event_path(@event)
    expect(page.status_code).to eq(200)
  end

  it 'show date on the show page in a h4 tag' do
    visit event_path(@event)
    expect(page).to have_css("h4", text: "4/1/19")
  end

  it 'show location on the show page in a h4 tag' do
    visit event_path(@event)
    expect(page).to have_css("h4", text: "Willy Wonka Factory")
  end

  it 'show description on the show page in a h5 tag' do 
    visit event_path(@event)
    expect(page).to have_css("h5", text: "For The love of Candy , Candy Making and Technique")
  end
end

  describe 'form' do 
    it 'shows a new form that submits content and redirect and prints out params' do 
      visit new_event_path

      fill_in 'event[name]', with: "My Event"
      fill_in 'event[date]', with: "4/3/19"
      fill_in 'event[location]', with: "My Event Location"
      fill_in 'event[description]', with: "My Event Description"

      click_on "Create Event"

      expect(page).to have_content("My Event")
    end

    it 'shows an edit form that submits content, redirects and prints out params' do 
      @event = Event.create(name: "New Event", date: "5/27/19", location: "New location", description: "New description")

      visit edit_event_path(@event)

      fill_in 'event[name]', with: "Updated Event"
      fill_in 'event[date]', with: "7/27/19"
      fill_in 'event[location]', with: "Updated Location"
      fill_in 'event[description]', with: "Updated Description"

      click_on "Update Event"

      expect(page).to have_content("Updated Location")
    end

end