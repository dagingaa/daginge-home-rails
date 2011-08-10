class HomeController < ApplicationController
  def index
    @jobs = Job.all
    @educations = Education.all
  end

end
