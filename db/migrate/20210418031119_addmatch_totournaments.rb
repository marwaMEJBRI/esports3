class AddmatchTotournaments < ActiveRecord::Migration[6.1]
  def change
    add_reference :tournaments, :match, index: true

  end
end
