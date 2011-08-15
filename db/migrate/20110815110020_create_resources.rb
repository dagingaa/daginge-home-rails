class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :link
      t.string :description_en
      t.string :description_no

      t.timestamps
    end
  end
end
