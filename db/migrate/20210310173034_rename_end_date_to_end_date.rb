class RenameEndDateToEndDate < ActiveRecord::Migration[6.1]
  def change
    rename_column :matches, :End_date, :end_date
    end
end
