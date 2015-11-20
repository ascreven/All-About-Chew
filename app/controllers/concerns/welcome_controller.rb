class WelcomeController < ApplicationController
def index
  if current_user
    redirect_to profiles_path
  else
  @profiles = Profile.all
  end
end
end
