class AddSchoolModulesToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :school_module, foreign_key: true
  end
end
