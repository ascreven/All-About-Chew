class WelcomeController < ApplicationController
  def index
  end

  def create
    render plain: params[:profile].inspect
    @profile = Profile.new(params[:profile])
    @profile.save
    redirect_to @profile
  end
end
