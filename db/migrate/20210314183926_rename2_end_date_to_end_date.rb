class Rename2EndDateToEndDate < ActiveRecord::Migration[6.1]
  def change
    rename_column :tournaments, :End_date, :end_date
  end
end
