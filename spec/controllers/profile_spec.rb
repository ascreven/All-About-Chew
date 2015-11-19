require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do

  describe "GET #new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("profiles/new", "layouts/application")
    end
  end

  describe "GET #index" do
    it "loads all of the profiles into @profiles" do
      profile1, profile2 = Profile.create!, Profile.create!
      get :index

      expect(assigns(:profiles)).to match_array([profile1, profile2])
    end
  end
end
