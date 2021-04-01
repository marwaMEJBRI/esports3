class AddMatchIdToRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :match_id, :integer
  end
end
