class Event < ApplicationRecord
  validates_presence_of :event_title, :event_description, :event_date, :event_location
  has_rich_text :event_description
  
  belongs_to :user, class_name: "User"
  
  has_many :attending_events
  has_many :attendees, through: :attending_events, source: :user

  scope :past, -> { where "event_date < ?", Time.now }
  scope :future, -> { where "event_date > ?", Time.now }
end
