require "spec_helper"
require "YoYoYo"

describe YoYoYo do
  it "says that it goes" do
    YoYoYo.new("in the air").say.should == "The yoyo goes where? It goes in the air"
  end
end