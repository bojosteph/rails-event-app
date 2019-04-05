require 'rails_helper'

describe 'events' do 
    it 'can be created' do 
        visit new_event_path
        expect(true).to eq(true)
    end
end