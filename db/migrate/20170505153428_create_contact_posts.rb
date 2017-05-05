class CreateContactPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_posts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
