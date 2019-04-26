class User < ApplicationRecord
  has_secure_password
  validates_presence_of :username, :email, presence: true, uniqueness: true
  validates_presence_of :password, :full_name
  has_many :events
  has_many :rsvp_events, foreign_key: :participant_id
  has_many :attending_events, through: :rsvp_events, source: :event
end
