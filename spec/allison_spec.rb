require "spec_helper"
require "allison"

describe Allison do
  it "says that she is" do
    Allison.new("poop").say.should == "I study poop"
  end
end