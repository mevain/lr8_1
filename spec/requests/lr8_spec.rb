require 'rails_helper'

RSpec.describe "Lr8s", type: :request do
  describe "GET /input" do
    it "returns http success" do
      get "/lr8/input"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /output" do
    it "returns http success" do
      get "/lr8/output", params: {amount: 6, array: "1 6 28 5 496 13"}
      expect(response).to have_http_status(:success)
    end

    it 'works correctly' do
      get "/lr8/output", params: {amount: 6, array: "1 6 28 5 496 13"}
      expect(assigns(:cuts)).to eq([["6", "28"], ["496"]])
    end
  end
end
