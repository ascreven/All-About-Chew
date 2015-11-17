class ProfilesController < ApplicationController
  def index
    @profiles = User.find(session[:user]["id"]).profiles
  end

  def new
    @profile = Profile.new
  end

  def create
    @user = User.find(session[:user]["id"])
    @profile = @user.profiles.create!(profile_params)
    if @profile.save
      flash[:notice] = "#{@profile.name} was successfully created."
      redirect_to (artist_path(@profile))
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
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      flash[:notice] = "#{@profile.name} was successfully updated."
      redirect_to @profile
    else
      render :edit
    end
  end


  def destroy
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :gender, :breed, :city, :state, :age, :pro_pic, :description)
  end
end
