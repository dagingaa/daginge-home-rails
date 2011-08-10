class AddStillEmployedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :still_employed, :boolean
  end
end
