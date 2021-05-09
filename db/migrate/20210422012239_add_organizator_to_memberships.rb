class AddOrganizatorToMemberships < ActiveRecord::Migration[6.1]
  def change
    add_column :memberships, :organizator, :boolean
  end
end
