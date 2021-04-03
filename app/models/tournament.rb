class Tournament < ApplicationRecord
    validates :name, presence: true
    has_many :teams, through: :TeamAndTournamentLinked
    has_many :matches
    #def random_team
     #   self.limit(2).offset (rand(@team)).first
    #end
    def 
        adjacent(teams)
        teams.each_slice(2).to_a
      end
      def random(teams)
        adjacent(teams.shuffle)
      end
    
end

#mot de passe marwa 
# RIwa ME 548 @@@