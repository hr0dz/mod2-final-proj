class Note < ApplicationRecord
    belongs_to :user
    belongs_to :business

    validates :category, :content, :title, presence: true

end