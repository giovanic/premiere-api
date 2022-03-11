require 'rails_helper'

RSpec.describe "Markers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/markers/index"
      expect(response).to have_http_status(:success)
    end
  end

end
