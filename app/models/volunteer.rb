class Volunteer < ApplicationRecord
    has_many :event_volunteers
    has_many :events, through: :event_volunteers
    validates :username, presence: true
    validates :username, uniqueness: true
end
