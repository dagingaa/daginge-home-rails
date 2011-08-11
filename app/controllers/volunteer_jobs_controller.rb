class VolunteerJobsController < ApplicationController
  load_and_authorize_resource
  # GET /volunteer_jobs
  # GET /volunteer_jobs.json
  def index
    @volunteer_jobs = VolunteerJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volunteer_jobs }
    end
  end

  # GET /volunteer_jobs/1
  # GET /volunteer_jobs/1.json
  def show
    @volunteer_job = VolunteerJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volunteer_job }
    end
  end

  # GET /volunteer_jobs/new
  # GET /volunteer_jobs/new.json
  def new
    @volunteer_job = VolunteerJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volunteer_job }
    end
  end

  # GET /volunteer_jobs/1/edit
  def edit
    @volunteer_job = VolunteerJob.find(params[:id])
  end

  # POST /volunteer_jobs
  # POST /volunteer_jobs.json
  def create
    @volunteer_job = VolunteerJob.new(params[:volunteer_job])

    respond_to do |format|
      if @volunteer_job.save
        format.html { redirect_to @volunteer_job, notice: 'Volunteer job was successfully created.' }
        format.json { render json: @volunteer_job, status: :created, location: @volunteer_job }
      else
        format.html { render action: "new" }
        format.json { render json: @volunteer_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volunteer_jobs/1
  # PUT /volunteer_jobs/1.json
  def update
    @volunteer_job = VolunteerJob.find(params[:id])

    respond_to do |format|
      if @volunteer_job.update_attributes(params[:volunteer_job])
        format.html { redirect_to @volunteer_job, notice: 'Volunteer job was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @volunteer_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_jobs/1
  # DELETE /volunteer_jobs/1.json
  def destroy
    @volunteer_job = VolunteerJob.find(params[:id])
    @volunteer_job.destroy

    respond_to do |format|
      format.html { redirect_to volunteer_jobs_url }
      format.json { head :ok }
    end
  end
end
