class EventRecord < ApplicationRecord
  validates :user, presence: true
  validates :event, presence: true

  validates :event, uniqueness: {scope: :user, message: "You are already attending this event"}

  belongs_to :user
  belongs_to :event
end
