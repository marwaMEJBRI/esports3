class AddNumberOfMatchesToTournaments < ActiveRecord::Migration[6.1]
  def change
    add_column :tournaments, :number_of_matches, :integer
  end
end
