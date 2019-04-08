class Event < ApplicationRecord
  validates_presence_of :name, :date, :location, :description
  belongs_to :user
  has_many :rsvp_events

  
end
