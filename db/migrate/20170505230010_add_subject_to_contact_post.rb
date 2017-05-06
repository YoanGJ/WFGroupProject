class AddSubjectToContactPost < ActiveRecord::Migration[5.0]
  def change
    add_column :contact_posts, :subject, :string
  end
end
