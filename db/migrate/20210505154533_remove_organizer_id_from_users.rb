class RemoveOrganizerIdFromUsers < ActiveRecord::Migration[6.1]
  def change
          remove_column(:users, :Organizer_id, :bigint)

  end
end
