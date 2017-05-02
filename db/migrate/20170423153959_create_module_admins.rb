class CreateModuleAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :module_admins do |t|
      t.string :name
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end
