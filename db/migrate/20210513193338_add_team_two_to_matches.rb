class AddTeamTwoToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :team_two, :string
  end
end
