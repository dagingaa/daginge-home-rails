class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :about_no, :text
    add_column :users, :about_en, :text
  end
end
