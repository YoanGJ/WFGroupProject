class CreateSchoolModules < ActiveRecord::Migration[5.0]
  def change
    create_table :school_modules do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
