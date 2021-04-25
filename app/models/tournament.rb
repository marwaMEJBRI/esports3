class Tournament < ApplicationRecord
    validates :name, presence: true
    has_many :matches
    has_many :teams
    has_many :organizers
    # Below is likely working but connectivity was not fully checked
  # has_many :organizer_users, through: :admins, source: :user
  
  
  
  
  
  
   # def get_all_available_players
        #@players = Player.where('isavailable is true').order('name')
  #  end
      
      #def build_teams(users)
        #Find the players who are playing ordered by their performance points
       # players = get_all_available_players
        
        # team1 = {}
        # team2 = {}
        
        #Assign the players to teams
       # players.each_with_index do |player, i|
        #   if (i % 2) == 0
        #     team1["#{player.id}"] = "1"
        #   else
        #     team2["#{player.id}"] = "2"
        #   end
        # end
        
        #Randomly choose which teams are going to be home and away
       # teams = [team1, team2].sort_by { rand }
        
        #Assign and save players to the home team side
      #  team.player_list = teams[0]
      #  team.save
        
        #Assign and save players to the away team side
      #   team.player_list = teams[1]
      #   team.save
      # end
      def adjacent(teams)
        teams.each_slice(2).to_a
      end

      def fold(teams)
        top, bottom = teams.each_slice(teams.length / 2).to_a

        bottom.reverse!

        top.zip(bottom).to_a
      end

      def slide(teams)
        top, bottom = teams.each_slice(teams.length / 2).to_a

        top.zip(bottom).to_a
      end
      
      def random(teams)
        adjacent(teams.shuffle)
      end

end

