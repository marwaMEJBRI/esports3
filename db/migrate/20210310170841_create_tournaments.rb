class CreateTournaments < ActiveRecord::Migration[6.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :End_date

      t.timestamps
    end
  end
end
