class AddRoundIdToScores < ActiveRecord::Migration[6.1]
  def change
    add_column :scores, :round_id, :integer
  end
end
