# 10. Write a piece of code to demonstrate the difference between `include`
# and `extend` in using Ruby modules with classes to include methods. Make
# sure to demonstrate calling the methods with your code.

module Greeting
  def say_hello
    puts "Hi"
  end
end

class Human
  include Greeting
end

class Alien
  extend Greeting
end


# Terminal Output
# 2.0.0-p643 :002 > module Greetings
# 2.0.0-p643 :003?>   def say_hello
# 2.0.0-p643 :004?>     puts "hi"
# 2.0.0-p643 :005?>     end
# 2.0.0-p643 :006?>   end
# nil
# 2.0.0-p643 :007 > class Human
# 2.0.0-p643 :008?>   include Greetings
# 2.0.0-p643 :009?>   end
# Human < Object
# 2.0.0-p643 :010 > Human.new.say_hello
# hi
# nil
# 2.0.0-p643 :011 > Human.say_hello
# NoMethodError: undefined method `say_hello' for Human:Class
# 	from (irb):11
# 	from /Users/michaelptoneil/.rvm/rubies/ruby-2.0.0-p643/bin/irb:12:in `<main>'
# 2.0.0-p643 :012 > class Alien
# 2.0.0-p643 :013?>   extend Greetings
# 2.0.0-p643 :014?>   end
# Alien < Object
# 2.0.0-p643 :015 > Alien.new.say_hello
# NoMethodError: undefined method `say_hello' for #<Alien:0x007f8d939dfb48>
# 	from (irb):15
# 	from /Users/michaelptoneil/.rvm/rubies/ruby-2.0.0-p643/bin/irb:12:in `<main>'
# 2.0.0-p643 :016 > Alien.say_hello
# hi
# nil
# 2.0.0-p643 :017 >
