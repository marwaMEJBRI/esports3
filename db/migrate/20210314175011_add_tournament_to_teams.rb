class AddTournamentToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :id_tournament, :integer
  end
end
