class Cat
def initialize(name,preferd_food, meal_time)
  @name=name
  @preferd_food=preferd_food
  @meal_time=meal_time
end

def name
  return @namespace
end

def meal_at
  if@meal_time<12
    return "#{@meal_time} AM"
  else
    return "#{@meal_time - 12} PM"
  end
end

def meow
 return "My name is #{@name}. I eat #{(@preferd_food)} at #{@meal_time}"
end
end

 cat=Cat.new("catii","meat",13)
 # cat.initialize
 puts "#{cat.meow}"
