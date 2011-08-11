class CreateVolunteerJobs < ActiveRecord::Migration
  def change
    create_table :volunteer_jobs do |t|
      t.string :organization
      t.date :from
      t.date :to
      t.boolean :still_active
      t.string :title_no
      t.text :description_no
      t.string :title_en
      t.text :description_en

      t.timestamps
    end
  end
end
