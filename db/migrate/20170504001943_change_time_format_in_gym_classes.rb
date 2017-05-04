class ChangeTimeFormatInGymClasses < ActiveRecord::Migration[5.0]
  def change
    change_column :gym_classes, :start_time, :string
    change_column :gym_classes, :end_time, :string
  end
end
