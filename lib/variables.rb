class LocalVariableScopeDemo
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
end
