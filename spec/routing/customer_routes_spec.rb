require 'rails_helper'

RSpec.describe CustomersController, type: :routing do 

  describe "Routes" do 
    it "get index" do
      expect(get: "/customers").to route_to(
        controller: "customers",
        action: "index") 
    end 
   it "get new " do 
    expect(get: "/customers/new").to route_to(
      controller: "customers",
      action: "new")
   end  
   it "post create" do 
    expect(post: "/customers").to route_to(
      controller: "customers",
      action: "create")
   end

   it "get show" do 
    expect(get: "/customers/1").to route_to(
      controller: "customers",
      action: "show",
      id: "1")
   end

   it "get edit" do 
    expect(get: "/customers/1/edit").to route_to(
      controller: "customers",
      action: "edit",
      id: "1")
   end

   it "put update" do 
    expect(put: "/customers/1").to route_to(
      controller: "customers",
      action: "update",
      id: "1")   
  end   

   it "delete destroy" do 
    expect(delete: "/customers/1").to route_to(
      controller: "customers",
      action: "destroy",
      id: "1")
   end

   it "get search" do 
    expect(get: "/customers/search").to route_to(
      controller: "customers",
      action: "search")
   end

   it "get preview" do 
    expect(get: "/customers/1/preview").to route_to(
      controller: "customers",
      action: "preview",
      id: "1"
      )
   end
   it "not to get make" do 
    expect(get: "/customers/1/make").not_to be_routable
   end
  end
end
