class RemoveTournamentIdFromMatches < ActiveRecord::Migration[6.1]
  def change
    remove_column(:matches, :tournament_id, :integer)
  end
end
