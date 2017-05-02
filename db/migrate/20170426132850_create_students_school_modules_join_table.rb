class CreateStudentsSchoolModulesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :students, :school_modules do |t|
      # t.index [:student_id, :school_module_id]
      # t.index [:school_module_id, :student_id]
    end
  end
end
