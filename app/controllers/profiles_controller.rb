class ProfilesController < ApplicationController
  def index
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
  end

  def edit
  end


  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to @profile
  end

  def update
  end

  def destroy
  end

  private
  def profile_params
    params.require(:username, :password, :name).permit(:female, :male, :breed, :city, :state, :age, :pro_pic, :description)
  end
end
