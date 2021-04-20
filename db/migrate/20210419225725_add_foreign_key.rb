class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
      add_column(:players, :team_id, :bigint)
      add_column(:tournaments, :match_id, :bigint)
    add_foreign_key(:players, :teams)
    add_foreign_key(:tournaments, :teams)
    add_foreign_key(:teams, :matches)
    add_foreign_key(:tournaments, :matches)
   





  end
end
