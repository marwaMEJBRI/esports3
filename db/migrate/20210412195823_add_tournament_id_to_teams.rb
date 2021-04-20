class AddTournamentIdToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :tournament_id, :integer
  end
end
