class AddScoreOfTeamTwoToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :score_of_team_two, :integer
  end
end
