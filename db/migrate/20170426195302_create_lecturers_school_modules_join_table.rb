class CreateLecturersSchoolModulesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :lecturers, :school_modules do |t|
      # t.index [:lecturer_id, :school_module_id]
      # t.index [:school_module_id, :lecturer_id]
    end
  end
end
