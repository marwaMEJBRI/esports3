class CreateOrganizers < ActiveRecord::Migration[6.1]
  def change
    create_table :organizers do |t|
      t.integer "user_id"
      t.integer "tournament_id"
      
      t.timestamps
    end
  end
end
