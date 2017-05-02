class AddPasswordDigestToModuleAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :module_admins, :password_digest, :string
  end
end
