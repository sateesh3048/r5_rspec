require "rails_helper"
describe Counter do 
  fit "should increment the count" do 
    expect{Counter.increment}.to change { Counter.count}.from(10).to(11)
  end
  it "increments the count by 2" do 
    expect {Counter.increment}.to change { Counter.count}.by(1)
  end
  
  skip "not yet implemented" do 
  end

  it "counter busines logic" do 
    skip "We need to implement this test"
  end
  
  it "should skip this test", skip: true do 
  end

  it "counter business login peding" do 
    pending "counter busing logic pending test"
    expect(false).to eq(true)
  end

end