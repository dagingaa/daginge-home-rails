class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :employer
      t.string :homepage
      t.date :from
      t.date :to
      t.string :title_no
      t.string :title_en
      t.text :description_no
      t.text :description_en

      t.timestamps
    end
  end
end
