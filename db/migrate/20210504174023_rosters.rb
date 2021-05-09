class Rosters < ActiveRecord::Migration[6.1]
  def change
    create_table :rosters do |t|
     
      t.string :name
t.integer :team_id
      t.timestamps
  end
end
end
