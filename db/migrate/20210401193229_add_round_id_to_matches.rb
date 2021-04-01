class AddRoundIdToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :round_id, :integer
  end
end
