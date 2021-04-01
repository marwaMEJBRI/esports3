class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :email
      t.string :description
            t.timestamps
  end
end

end
