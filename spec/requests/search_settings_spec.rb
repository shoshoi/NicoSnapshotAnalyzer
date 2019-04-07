require 'rails_helper'

RSpec.describe "SearchSettings", type: :request do
  describe "GET /search_settings" do
    it "works! (now write some real specs)" do
      get search_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
