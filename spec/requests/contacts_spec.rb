require "rails_helper"
RSpec.describe "Contacts", :type => :request do 
  it "lists all the contacts" do 
    get contacts_path
    
  end

  it "creates"
end