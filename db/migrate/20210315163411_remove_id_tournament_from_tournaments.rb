class RemoveIdTournamentFromTournaments < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :id_tournament
  end
end
