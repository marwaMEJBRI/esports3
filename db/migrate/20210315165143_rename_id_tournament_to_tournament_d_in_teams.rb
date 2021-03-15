class RenameIdTournamentToTournamentDInTeams < ActiveRecord::Migration[6.1]
  def change
    rename_column :teams, :id_tournament,:tournament_id 
  end
end
