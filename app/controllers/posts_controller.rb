class PostsController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    if current_user
      @profiles = current_user.profiles
    else
      @profiles = Profiles.all
    end
  end
end
