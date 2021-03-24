module TeamMaker 
    # Pair adjacent teams.
      #
      # @example
      #   adjacent([1, 2, 3, 4]) #=> [[1, 2], [3, 4]]
      #
      # @param teams [Array<team>]
      # @return [Array<Array(team, team)>]
    def adjacent(teams)
        teams.each_slice(2).to_a
      end


      
      # Random pairing
      #
      # Pair teams randomly.
      #
      # @example
      #   pair([1, 2, 3, 4, 5, 6]) #=> [[1, 4], [2, 6], [3, 5]]
      #
      # @param teams [Array<team>]
      # @return [Array<Array(team, team)>]
      def random(teams)
        adjacent(teams.shuffle)
      end




    end
