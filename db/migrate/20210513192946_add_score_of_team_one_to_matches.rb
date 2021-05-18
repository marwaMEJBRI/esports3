class AddScoreOfTeamOneToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :score_of_team_one, :integer
  end
end
