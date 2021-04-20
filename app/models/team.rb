class Team < ApplicationRecord
    validates :name, presence: true
    has_many :matches, through: :relation
  belongs_to :tournament
    has_many :players
end

