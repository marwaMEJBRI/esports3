class CreateJoinrequests < ActiveRecord::Migration[6.1]
  def change
    create_table :joinrequests do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :team, foreign_key: true
      t.string :message
      t.timestamps
    end
  end
end
