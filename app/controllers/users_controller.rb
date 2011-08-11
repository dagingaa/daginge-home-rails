class UsersController < ApplicationController
  load_and_authorize_resource
  def new  
    @user = User.new  
  end  

  def create  
    @user = User.new(params[:user])  
    if @user.save  
      redirect_to root_url, :notice => "Signed up!"  
    else  
      render "new"  
    end  
  end
  # GET /user/1/edit
  def edit
    @user = User.find(params[:id])
  end 

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


end
