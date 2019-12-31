class Event < ApplicationRecord
    has_many :event_volunteers
    belongs_to :organization
    has_many :volunteers, through: :event_volunteers
end
