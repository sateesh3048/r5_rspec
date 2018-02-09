require 'rails_helper'

RSpec.describe User, type: :model do
  describe "comparision operators" do 
    it "performs comparisions" do 
      expect(5).to be > 3
      expect(5).to be >= 5
      expect(5) .to be <= 10
      expect(5).to be <= 5
      expect(5.123).to be_within(0.2).of(5)
    end
  end
  describe "classes" do 
    it "Performs class operations" do 
      expect(true).to be_an(TrueClass)
      expect(1).to be_an_instance_of(Integer)
      expect(1).to be_a(Integer)
      expect("hi").to be_a_kind_of(String)
    end
  end

  describe "Truthness" do 
    it "performs boolean operations" do
      is_active = true 
      is_registered = false
      expect(is_active).to be true
      expect(is_registered).to be false
      expect(@test).to be nil
      expect(@test).to be_falsy
      expect(is_active).to be_truthy
    end
  end
  describe "Expecting Error" do 
    it "is expecting error" do 
      expect {1/0}.to raise_error(ZeroDivisionError)
      expect { User.test }.to raise_error("user_error");
    end 
  end
  describe "Predicate Matchers" do 
    it "is expecting predicate matchers" do
      expect([]).to be_empty
      expect({a:1, b:2}).to have_key(:a) 
      expect({a:1, b:2}).to have_value(2)
      expect([3,5,9]).to be_include(5)
    end
  end
  describe "#Ranges" do 
    it "is should cover 5" do 
      expect(2..9).to cover(5)
    end
  end

  describe "#Array Matchers" do 
    it "matches array" do 
      ary = [5,3,9] 
      expect(ary).to include(3)
      expect(ary).to include(3,9)
      expect(ary).to start_with(5)
      expect(ary).to end_with(9)
      expect(ary).to match_array([5,9,3])
      expect(ary).to contain_exactly(5,3,9)
    end
  end

  describe "#Composing matchers" do 
    it "composing matchers" do 
      k = 0
      expect{ k += 1}.to change{k}.by(1)
      expect{ k+= 1 }.to change{k}.from(1).to(2)
    end
  end
  describe "#Respond" do
    it "user object should respond" do 
      expect(User.new).to respond_to(:email)
    end
    it  "user object should respond to sum" do 
      expect(User.new).to respond_to(:sum).with(2).arguments
    end
  end
  describe "#show_projects" do 
    it "should show user projects" do 
      project= double('project')
      user = User.new
      allow(project).to receive(:name).and_return("bingBank");
      puts user.show_project(project)
      expect(user.show_project(project)).to eq(project.name)
    end
  end
end