class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :result
      t.string :brodcast_link
      t.datetime :start_date
      t.datetime :End_date

      t.timestamps
    end
  end
end
