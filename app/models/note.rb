class Note < ApplicationRecord
    belongs_to :user
    belongs_to :business
    has_many :comments
    has_many :users, through: :comments
    validates :category, :content, :title, presence: true
end