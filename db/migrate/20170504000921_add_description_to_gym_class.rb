class AddDescriptionToGymClass < ActiveRecord::Migration[5.0]
  def change
    add_column :gym_classes, :description, :string
  end
end
