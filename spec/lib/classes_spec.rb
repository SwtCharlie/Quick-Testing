require "spec_helper"
require "lib/classes"

describe Animal do
  it "speaks" do
    expect { Animal.new.speak }.to raise_error(NoMethodError)
    Mammal.new.speak == 'I am a mammal'
    Dog.new.speak == 'bark'
    Dog.superclass.should == Mammal
    Mammal.superclass.should == Animal
  end
end