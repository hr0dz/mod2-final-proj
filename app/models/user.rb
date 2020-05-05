class User < ApplicationRecord
    has_many :notes
    has_many :businesses, through: :notes
end