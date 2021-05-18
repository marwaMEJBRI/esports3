class CreateWinners < ActiveRecord::Migration[6.1]
  def change
    create_table :winners do |t|
      t.string :name 
      t.integer :score
      t.string :tournament_name

      t.timestamps
    end
  end
end
