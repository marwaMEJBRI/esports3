class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.integer :match_id
      t.integer :team_id

      t.timestamps
    end
  end
end
