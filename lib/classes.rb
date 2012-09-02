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
  def run
    'I ran'
  end
end