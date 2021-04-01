class AddTeamIdToRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :team_id, :integer
  end
end
