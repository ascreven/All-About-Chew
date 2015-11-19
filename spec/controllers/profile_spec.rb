require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do

  describe "GET #new" do
      it "renders the new template" do
        get :new
        expect(response).to render_template("profiles/new", "layouts/application")
      end
    end
end
