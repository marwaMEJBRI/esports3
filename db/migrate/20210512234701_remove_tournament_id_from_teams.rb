class RemoveTournamentIdFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_column(:teams, :tournament_id, :integer)
  end
end
