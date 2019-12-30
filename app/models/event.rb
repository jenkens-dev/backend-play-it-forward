class Event < ApplicationRecord
    has_many :event_volunteers
    has_many :event_organizations
    has_many :organizations, through: :event_organization 
    has_many :volunteers, through: :event_volunteers
end
