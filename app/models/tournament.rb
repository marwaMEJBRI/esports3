class Tournament < ApplicationRecord
    validates :name, presence: true
    has_many :teams, through: :TeamAndTournamentLinked
    has_many :matches
end
