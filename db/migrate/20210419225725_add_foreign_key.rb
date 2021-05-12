class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
      add_column(:players, :team_id, :bigint)
      #add_column(:tournaments, :match_id, :bigint)
     # add_column(:users, :Organizer_id, :bigint)
      #add_column(:teams, :match_id, :bigint)
      #add_column(:joinrequests, :team_id, :bigint
      #remove_reference(:users, :organizers, foreign_key: true)
    add_foreign_key(:players, :teams)
    add_foreign_key(:tournaments, :teams)
   # add_foreign_key(:teams, :matches)
    add_foreign_key(:tournaments, :matches)
   # add_foreign_key(:Joinrequests, :teams)
   # add_foreign_key(:joinrequests, :users ) 
    #add_foreign_key(:memberships, :teams )  
   add_foreign_key(:teams, :rosters )  





  end
end
