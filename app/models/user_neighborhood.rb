class User_Neighborhood < ApplicationRecord
    belongs_to :user
    belongs_to :neighborhood
end