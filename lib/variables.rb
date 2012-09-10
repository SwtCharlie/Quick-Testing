$my_global_var = 'im seen everywhere'

# > load 'lib/variables.rb'
# > local = LocalVariableDemo.new
# > local.tung
# > local.vuon
# > local.vuon2
class LocalVariableDemo
  def tung
    local_var1 = 'tung'
  end
  def vuon
    local_var2 = 'vuon'
    puts "local_var2 #{local_var2.inspect}"
    puts "local_var1 #{local_var1.inspect}" # will error beause I don't have access to it
  end
  def vuon2
    tung # i can only access it with a method
  end
  def puts_global
    puts $my_global_var
  end
  def set_global_var=(val)
    $my_global_var = val
  end
end

# > load 'lib/variables.rb'
# > demo = InstanceVariableDemo.new
# > demo.puts_instance_vars
# > demo.set_instance_vars
# > demo.puts_instance_vars
class InstanceVariableDemo
  def set_instance_vars
    @instance_var1 = 'tung1'
    @instance_var2 = 'tung2'
    1
  end
  def puts_instance_vars
    puts "@instance_var1 #{@instance_var1.inspect}"
    puts "@instance_var1 #{@instance_var1.inspect}"
  end
  def puts_global
    puts $my_global_var
  end
end

# > load 'lib/variables.rb'
# > demo = InstanceVsClassMethodDemo.new
# > demo.instance_method
# > demo.class_method # will error, this is a class not instancemethod
# > InstanceVsClassMethodDemo.class_method
# > InstanceVsClassMethodDemo.class_method # will error, this is a instance not class method
class InstanceVsClassMethodDemo
  # called like this InstanceVsClassMethodDemo.new.instance_method
  def instance_method
    puts 'instance method called'
  end
  def puts_global
    puts $my_global_var
  end
  # called like this InstanceVsClassMethodDemo.class_method
  # note: you dont need a new instance
  # you defined class methods with a self. in front
  def self.class_method
    puts 'instance method'
  end
  def self.puts_global
    puts $my_global_var
  end
end

# class variables are denoted with @@
# instance varialables are denoted with @
# 
# > ClassVariableDemo.puts_class_var
# > ClassVariableDemo.set_class_var
# > ClassVariableDemo.puts_class_var
# > demo = ClassVariableDemo.new
# > demo.instance_method_that_puts_class_var
class ClassVariableDemo
  # instance method definitions follows
  def set_instance_var
    @instance_var = 'instance var tung'
  end
  def puts_instance_var
    puts "@instance_var #{@instance_var.inspect}"
  end
  # instance variables have access to @@class_var
  def instance_method_that_puts_class_var
    puts "@@class_var #{@@class_var.inspect}"
  end
  # class method definitions follows
  def self.set_class_var(val='default')
    @@class_var = "instance var #{val}"
  end
  def self.puts_class_var
    puts "@@class_var #{@@class_var.inspect}"
  end
end

