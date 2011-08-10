class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school
      t.string :homepage
      t.date :from
      t.date :to
      t.boolean :still_student
      t.string :degree_no
      t.text :description_no
      t.string :degree_en
      t.text :description_en

      t.timestamps
    end
  end
end
