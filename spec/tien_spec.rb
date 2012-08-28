require "spec_helper"
require "tien"

describe Tien do
  it "says that he is" do
    Tien.new("suck").say.should == "I suck"
  end
end