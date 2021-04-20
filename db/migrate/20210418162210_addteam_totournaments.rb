class AddteamTotournaments < ActiveRecord::Migration[6.1]
    
  def change
    
    add_reference :tournaments, :team, index: true
  end
end
