class Event < ApplicationRecord
  validates_presence_of :name, :location, :description, :start_of_event, :end_of_event
  belongs_to :user
  has_many :rsvp_events

  
end
