require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  let!(:user) { build(:user)}
  let(:user_id) { user.id}

  before { host! "api.premiere.dev"}

  describe "GET /users/:id" do
    before do
      get "/users/#{user_id}", params: {}
    end

    context 'when the user exists' do
      it "return the user" do
        user_response = JSON.parse(response.body)
        expect(user_response['id']).to eq(user_id)
      end    
    end
  end
end

