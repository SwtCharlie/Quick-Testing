class Animal
end
class Mammal < Animal
  def speak
    'I am a mammal'
  end
end
class Dog < Mammal
  def speak
    'bark'
  end
end

require "spec_helper"

describe Animal do
  it "speaks" do
    expect { Animal.new.speak }.to raise_error(NoMethodError)
    Mammal.new.speak == 'I am a mammal'
    Dog.new.speak == 'bark'
    Dog.superclass.should == Mammal
    Mammal.superclass.should == Animal
  end
end