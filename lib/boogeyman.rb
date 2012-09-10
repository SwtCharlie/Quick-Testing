raise blahblahblah


class Boogeyman
  def initialize(name,location)
    @name = name
    @location = location
    "Yes, master?"
  end
  def anymethod(any_method_name)
  	@any_method_name = any_method_name
  	puts "This is the name of the method #{any_method_name}."
  end
  def change_location(newlocation)
  	@location = newlocation
  	puts "I moved to #{newlocation}!"
  	self.get_info
  end
  def change_name(newname)
  	@name = newname
  	puts "I shall be called #{newname} from now on!"
  	self.get_info
  end
  def get_info
  	puts "I am #{@name} in #{@location}."
  end
 end