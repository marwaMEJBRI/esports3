class AddTeam2ToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :team2, :string
  end
end
