require 'rails_helper'

RSpec.describe Message, type: :model do
  
  it "is valid with valid attributes" do 
    expect(Message.new).to be_valid
  end

  it "is not valid with out title" do
    message = Message.new title: nil
    expect(Message.new).to_not be_valid
  end
  
  it "is not valid with out text" do
  end

  it "is not valid with out receipient_id" do
  end
end
