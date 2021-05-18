class RemoveMatchIdFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_column(:teams, :match_id, :bigint)
  end
end
