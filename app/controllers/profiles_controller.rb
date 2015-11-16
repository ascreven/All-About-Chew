class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create

    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:notice] = "#{@profile.name} was successfully created."
      redirect_to @profile
    else
      render :new
    end
  end


  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end


  def update
  end

  def destroy
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :gender, :breed, :city, :state, :age, :pro_pic, :description)
  end
end
