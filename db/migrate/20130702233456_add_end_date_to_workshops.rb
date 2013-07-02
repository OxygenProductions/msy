class AddEndDateToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :end_date, :date
  end
end
