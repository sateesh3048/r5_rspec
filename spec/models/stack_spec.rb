require "rails_helper"
describe Stack do 

  describe "#push" do 
    context "When stack is full" do 
      before(:all) do
        @stack = Stack.new(5)
        @stack.push(10).push(20).push(30).push(40).push(50)
      end
      it "returns error message" do
        expect(5).to eq(15)


        expect(@stack.push(60)).to eq "Sorry stack is full"
      end
      it "need to add one more functionlaity"
    end
    context "When stack is not full" do 
      before(:each) do
        @stack = Stack.new(5)
        @stack.push(10)
      end
      it "adds items to the stack" do
        expect(@stack.push(20)).to eq(@stack.stack_ary)
      end
    end
  end

  describe "#peek" do
    context "When no items in stack" do 
      before(:each) do 
        @stack = Stack.new
      end
      it "returns error message" do 
        expect(@stack.peek).to eq("Sorry no items found in stack")
      end
    end
    context "When items are present in stack" do
      before(:each) do
        @stack = Stack.new 
        @stack.push(10)
        @stack.push(20)
        @size = @stack.size
      end      
      it "returns top item from stack" do
        expect(@stack.peek).to eq(20)
      end 
      it "wont remove top item from stack" do 
        pending "need to changed this functionlaity"
        
        expect(@stack.size).to eq(@size-1)
      end
    end
  end

  describe "#pop" do 
    context "When no items in stack" do 
      before(:each) do 
        @stack = Stack.new
      end
      it "returns error message" do 
        expect(@stack.peek).to eq("Sorry no items found in stack")
      end
    end
    context "When items are present in stack" do 
      before(:each) do
        @stack = Stack.new 
        @stack.push(10)
        @stack.push(20)
      end
      it "removes item from stack" do 
        expect(@stack.pop).to eq(20)
      end
    end  
  end
end