homicide = Thread.new do
  while (1 == 1)
  	puts "Don't kill me!"
  	Thread.pass
  end
end

suicide = Thread.new do
  puts "This is all meaningless!"
  Thread.exit
end

Thread.kill(homicide)
