class Person
  def initialize name, caffeine_level
    @name           = name
    @caffeine_level = caffeine_level
  end

  def run
    puts "Run Run Running!"
  end

  def scream
    puts "AAHHHH!"
  end

  def drink_coffee
    @caffeine_level += 1
    puts "Wow! I am hyped!"
  end
end

class PowerRanger
end

class EvilNinja
end
