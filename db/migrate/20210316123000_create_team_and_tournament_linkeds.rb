class CreateTeamAndTournamentLinkeds < ActiveRecord::Migration[6.1]
  def change
    create_table :team_and_tournament_linkeds do |t|
      t.integer :team_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
