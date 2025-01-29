require "rails_helper"

RSpec.describe Api::V2::ArticlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/articles").to route_to("api/v2/articles#index")
    end
    # it "routes to #index" do
    #   expect(get: "/api/articles").to route_to(
    #     controller: "api/v2/articles",
    #     action: "index",
    #     format: :json
    #   )
    # end
    end
#     it "routes to #show" do
#       expect(get: "/api//articles/1").to route_to("api/v2/articles#show", id: "1")
#     end


#     it "routes to #create" do
#       expect(post: "/articles").to route_to("articles#create")
#     end

#     it "routes to #update via PUT" do
#       expect(put: "/articles/1").to route_to("articles#update", id: "1")
#     end

#     it "routes to #update via PATCH" do
#       expect(patch: "/articles/1").to route_to("articles#update", id: "1")
#     end

#     it "routes to #destroy" do
#       expect(delete: "/articles/1").to route_to("articles#destroy", id: "1")
#     end
#   end
end
