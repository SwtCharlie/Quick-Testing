class GenderError < RuntimeError
  attr :what_they_put
  def initialize(their_input)
    @what_they_put = their_input
  end 
end

class Person
  def define_gender(gender)
    if (gender.upcase != 'FEMALE') && (gender.upcase != 'MALE')
      raise GenderError.new(gender), "Invalid input!"
    end
  end
  def initialize(gender)
    self.define_gender(gender)
  rescue GenderError => bad
    puts "You gave me some bad input: " + bad.what_they_put
    raise
  end
end
my_guy = Person.new("Who knows?")