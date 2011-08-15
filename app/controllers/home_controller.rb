class HomeController < ApplicationController
  skip_authorization_check
  def index
    @jobs = Job.all
    @educations = Education.all
    @volunteer_jobs = VolunteerJob.all
    @user = User.find(1)
    @resources = Resource.all
  end

end
