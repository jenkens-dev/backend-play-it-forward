class Organization < ApplicationRecord
    has_many :event_organizations 
    has_many :events, through: :event_organization 
end
