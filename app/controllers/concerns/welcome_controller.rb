class WelcomeController < ApplicationController
def index
  if current_user
    @profiles = current_user.profiles
  else
    @profiles = Profiles.all
  end
end

end
