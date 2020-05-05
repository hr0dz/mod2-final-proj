class User < ApplicationRecord
    has_many :notes
    has_many :user_neighborhoods
    has_many :neighborhoods, through: :user_neighborhoods
    has_many :businesses, through: :notes
end