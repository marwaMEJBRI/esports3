class CreateRoundmatches < ActiveRecord::Migration[6.1]
  def change
    create_table :roundmatches do |t|
      t.integer :round_id
      t.integer :match_id

      t.timestamps
    end
  end
end
