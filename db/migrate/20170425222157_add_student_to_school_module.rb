class AddStudentToSchoolModule < ActiveRecord::Migration[5.0]
  def change
    add_reference :school_modules, :student, foreign_key: true
  end
end
