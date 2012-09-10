require "spec_helper"
require "/lib/boogeyman"

describe Boogeyman do
  it "name and location should be" do
  	Boogeyman.new("Tien", "Davis").should == "Yes, master?"
  end

  it "test for anymethod should say" do
  	anymethod.new("tacos are great!").say.should == "This is the name of the method tacos are great."
  end
  
end

end

