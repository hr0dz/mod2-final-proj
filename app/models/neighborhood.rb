class Neighborhood < ApplicationRecord
    has_many :businesses
    has_many :users, through: :user_neighborhoods
end