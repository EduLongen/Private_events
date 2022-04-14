class Event < ApplicationRecord
  validates_presence_of :event_title, :event_description, :event_date, :event_location
  has_rich_text :event_description
  belongs_to :user
end
