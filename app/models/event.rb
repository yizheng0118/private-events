class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :time, presence:true
  validates :location, presence: true

  validates :name, uniqueness: { scope: [:time, :description]}

  belongs_to :creator, class_name: 'User'
end
