class AddMatchIdToTournaments < ActiveRecord::Migration[6.1]
  def change
    add_column :tournaments, :match_id, :bigint

  end
end
