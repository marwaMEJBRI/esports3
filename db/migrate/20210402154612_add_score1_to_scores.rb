class AddScore1ToScores < ActiveRecord::Migration[6.1]
  def change
    add_column :scores, :score1, :integer
  end
end
