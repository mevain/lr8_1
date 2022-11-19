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
      get "/lr8/output"
      expect(response).to have_http_status(:success)
    end
  end

end
