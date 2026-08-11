class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  validates :username, presence: true
  validates :encrypted_password, presence: true

  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :EventRecords
  has_many :attended_events, through: :EventRecords, source: :event
end
