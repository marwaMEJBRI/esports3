class AddTeam1ToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :team1, :string
  end
end
