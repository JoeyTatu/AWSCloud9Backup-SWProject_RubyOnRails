class Profile < ApplicationRecord
    belongs_to :user
    validates :first_name, presence: true, length: {minimum: 5}
    validates :first_name, presence: true, length: {minimum: 5}
    validates :location, presence: true, length: {minimum: 5}
    validates :headline, presence: true, length: {minimum: 10}
    validates :bio, presence: true, length: {minimum: 20}
end
