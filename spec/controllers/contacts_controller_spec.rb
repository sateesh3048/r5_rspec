require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe "Get #index" do 
    it "Populates array of contacts"  do 
      contact = create(:contact)
      get :index
      expect(assigns(:contacts)).to eq([contact])
      #expect(assigns(:teams)).to eq([team])
    end
    it "renders the index view" do 
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "Get #new" do 
  end

  describe "Post #create" do 
  end

  describe "Get #show" do 
  end

end
