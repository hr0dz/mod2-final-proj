class Business < ApplicationRecord
    belongs_to :neighborhood
    has_many :notes
    has_many :users, through: :notes
end