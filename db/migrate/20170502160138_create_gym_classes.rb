class CreateGymClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :gym_classes do |t|
      t.string :name
      t.string :instructor_first_name
      t.string :instructor_last_name
      t.string :day
      t.integer :start_time
      t.integer :end_time
      t.integer :starting_date

      t.timestamps
    end
  end
end
