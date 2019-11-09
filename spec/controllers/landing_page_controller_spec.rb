require 'rails_helper'

RSpec.describe LandingPageController, type: :controller do
    describe "landing_page#index action" do 
        it "should successfully show the page" do
            get :index
            expect(response).to have_http_status(:success)
        end
    end
end
