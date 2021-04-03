class AddScore2ToScores < ActiveRecord::Migration[6.1]
  def change
    add_column :scores, :score2, :integer
  end
end
