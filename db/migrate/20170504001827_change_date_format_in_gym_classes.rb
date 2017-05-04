class ChangeDateFormatInGymClasses < ActiveRecord::Migration[5.0]
  def change
    change_column :gym_classes, :starting_date, :string
  end
end
