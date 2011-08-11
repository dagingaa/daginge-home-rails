class HomeController < ApplicationController
  def index
    @jobs = Job.all
    @educations = Education.all
    @volunteer_jobs = VolunteerJob.all
    @user = User.find(1)
  end

end
