require 'rails_helper'

RSpec.describe RailsController, type: :controller do

  describe "GET #g" do
    it "returns http success" do
      get :g
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #model" do
    it "returns http success" do
      get :model
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #boardgame" do
    it "returns http success" do
      get :boardgame
      expect(response).to have_http_status(:success)
    end
  end

end
