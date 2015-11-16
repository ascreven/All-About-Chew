class WelcomeController < ApplicationController
  def index
  end

  def create
    render plain: params[:profile].inspect
  end
end
