require "rails_helper"

RSpec.describe SearchSettingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/search_settings").to route_to("search_settings#index")
    end

    it "routes to #new" do
      expect(:get => "/search_settings/new").to route_to("search_settings#new")
    end

    it "routes to #show" do
      expect(:get => "/search_settings/1").to route_to("search_settings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/search_settings/1/edit").to route_to("search_settings#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/search_settings").to route_to("search_settings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/search_settings/1").to route_to("search_settings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/search_settings/1").to route_to("search_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/search_settings/1").to route_to("search_settings#destroy", :id => "1")
    end
  end
end
