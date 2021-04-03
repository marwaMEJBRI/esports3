class Team < ApplicationRecord
    validates :name, presence: true
    has_many :matches, through: :relation
    has_many :tournaments, through: :TeamAndTournamentLinked
    has_many :likes
    belongs_to :rounds
    has_many :players
    


end

