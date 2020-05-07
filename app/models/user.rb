class User < ApplicationRecord
    has_secure_password

    validates :full_name, presence: true
    validates :email, presence: true, uniqueness: true
    
    has_many :notes
    has_many :notes, through: :comments
    has_many :user_neighborhoods
    has_many :neighborhoods, through: :user_neighborhoods
    has_many :businesses, through: :notes

    has_many :comments
    has_many :comments, through: :notes
end