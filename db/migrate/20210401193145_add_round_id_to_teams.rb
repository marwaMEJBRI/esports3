class AddRoundIdToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :round_id, :integer
  end
end
