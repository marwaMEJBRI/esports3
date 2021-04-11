class Team < ApplicationRecord
    validates :name, presence: true
    has_many :matches, through: :relation
    has_many :likes
    has_many :players
end

