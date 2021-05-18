class AddWinnerToTournaments < ActiveRecord::Migration[6.1]
  def change
    add_column :tournaments, :winner, :string
  end
end
