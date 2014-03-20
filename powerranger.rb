class Person
  attr_accessor :name, :caffeine_level

  def initialize name
    @name           = name
    @caffeine_level = 0
  end

  def run
    puts "#{@name} is Run Run Running!"
    return self
  end

  def scream
    puts "#{@name} says... AAHHHH!"
    return self
  end

  def drink_coffee
    @caffeine_level += 1
    puts "#{@name} says... Wow! I am hyped!"
    return self
  end
end

class PowerRanger < Person
  attr_accessor :strength, :color

  def initialize name, strength, color
    super name
    @strength = strength
    @color    = color
  end

  def self.use_megazord person
    puts "#{person.name} has been blasted to space"
  end

  def punch person
    if @caffeine_level >= 5
      puts "#{person.name} was somersaulted into the air by #{@name}"
      @caffeine_level -= 5
    else
      @caffeine_level = 0
    end

    person.scream.run

    return self
  end

  def rest
    puts "#{@name} says... whew! I needed a break!"
    return self
  end
end

class EvilNinja < Person
  attr_accessor :strength, :evilness

  def initialize name, strength, evilness
    super name
    @strength = strength
    @evilness = evilness
  end

  def punch person
    if @caffeine_level >= 5
      puts "#{person.name} was somersaulted into the air by #{@name}"
      @caffeine_level -= 5
    else
      @caffeine_level = 0
    end

    person.scream.run

    return self
  end

  def cause_mayhem person
    @caffeine_level += person.caffeine_level
    person.caffeine_level = 0

    puts "#{@name} says... Ha! Ha! Ha! I have drained #{person.name}'s caffeine!"
    return self
  end
end

def fight_scene
  person_1 = Person.new "Joe"
  person_1.drink_coffee
  person_1.caffeine_level += 5

  person_2 = Person.new "Bob"

  pr_1 = PowerRanger.new "Sam", 100, "Blue"
  pr_2 = PowerRanger.new "Jeff", 100, "Green"
  pr_1.caffeine_level += 10
  pr_2.rest
  pr_1.drink_coffee

  en_1 = EvilNinja.new "Bruce", 500, 100
  en_2 = EvilNinja.new "Dan", 1000, 300

  person_1.scream
  pr_2.run
  pr_1.punch person_2

  en_1.cause_mayhem person_1
  en_2.punch pr_1
  pr_1.rest

  PowerRanger.use_megazord en_1
  en_2.run.scream
end
