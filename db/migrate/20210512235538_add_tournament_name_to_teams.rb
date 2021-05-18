class AddTournamentNameToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :tournament_name, :string
  end
end
