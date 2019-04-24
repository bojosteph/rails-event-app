class Event < ApplicationRecord
  validates_presence_of :name, :location, :description, :start_of_event, :end_of_event
  belongs_to :user
  has_many :rsvp_events
  validate :date_must_be_current, if: :has_date_range?
  validate :correct_date_range, if: :has_date_range?
  validate :no_overlapping_events


  def no_overlapping_events
    if (Event.where("((? BETWEEN start_of_event AND end_of_event OR ? BETWEEN start_of_event AND end_of_event) AND user_id = ?) AND id != ? ", self.start_of_event, self.end_of_event, self.user_id, self.id).any?)
      errors.add(:base, 'it overlaps another Event please check your dates')
    end
  end
  
  

  def self.active_event
      where("end_of_event > ?", DateTime.now)
  end

  def self.past_event
      where("end_of_event < ?", DateTime.now)
  end

  def has_date_range?
    start_of_event.present? && end_of_event.present?
  end

  def date_must_be_current
    unless start_of_event >= DateTime.now
    errors.add(:start_of_event, "must be on or after current date")
    end
  end

  def correct_date_range
    unless end_of_event >= start_of_event
      errors.add(:end_of_event, "must be on or after start of event")
    end
  end

  
  
  
end
