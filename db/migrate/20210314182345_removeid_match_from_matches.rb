class RemoveidMatchFromMatches < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :id_match
  end
end
