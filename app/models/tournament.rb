class Tournament < ApplicationRecord
    validates :name, presence: true
    has_many :teams, through: :TeamAndTournamentLinked
    has_many :matches
    def random_team
       (self.limit(2).offset (rand(@team)).first).to_i
    end
end
