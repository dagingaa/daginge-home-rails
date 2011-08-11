class AddHomepageToVolunteerJobs < ActiveRecord::Migration
  def change
    add_column :volunteer_jobs, :homepage, :string
  end
end
