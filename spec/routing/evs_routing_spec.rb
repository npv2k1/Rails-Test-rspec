require "rails_helper"

RSpec.describe EvsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/evs").to route_to("evs#index")
    end

    it "routes to #new" do
      expect(get: "/evs/new").to route_to("evs#new")
    end

    it "routes to #show" do
      expect(get: "/evs/1").to route_to("evs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/evs/1/edit").to route_to("evs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/evs").to route_to("evs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/evs/1").to route_to("evs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/evs/1").to route_to("evs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/evs/1").to route_to("evs#destroy", id: "1")
    end
  end
end
