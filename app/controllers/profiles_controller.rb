class ProfilesController < ApplicationController
  # before_action :set_profile, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]
  def index
    @profiles = current_user.profiles
    # @user = User.find(session[:user]["id"])
    # @profiles = User.find(session[:user]["id"]).profiles
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create!(profile_params)
    # @user = current_user
    # @profile = current_user.profiles.create!(profile_params)
    # @user.profiles.create(user: current_user)
    if @profile.save
      # flash[:notice] = "#{@profile.name} was successfully created."
      redirect_to (profile_path(@profile))
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
