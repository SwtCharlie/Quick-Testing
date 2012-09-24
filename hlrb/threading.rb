t1 = Thread.new { print "w"; Thread.pass; print "a" }
t2 = Thread.new { print "e"; Thread.pass; print "l" }

t1.join
t2.join

mate = Thread.new do
                 puts "Ahoy! Can I be dropping the anchor sir?"
                 Thread.stop
                 puts "Aye sir, dropping anchor!"
               end
       Thread.pass
       puts "CAPTAIN: Aye, laddy!"
       mate.run
       mate.join