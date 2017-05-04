class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.string :title
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
