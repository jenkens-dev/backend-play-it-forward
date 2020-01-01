class Organization < ApplicationRecord
    has_many :events
    validates :username, presence: true
    validates :username, uniqueness: true
end
