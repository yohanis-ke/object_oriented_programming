class Player
  attr_reader  :lives, :gold, :health_points

  def initialize
  @lives = 3
  @gold = 0
  @health_points = 0
  end

  def  level_up
    @lives+=1
  end

  def collectin_treasusre
      if @gold%10==0
      level_up
      end
  end

 def restart
   @lives = 3
   @gold = 0
   @health_points = 0
 end

 def do_battle(damage)
    @health_points-=damage
    if @health_points < 1
       @lives-=1
       @health_points = 10
    end
  if @lives == 0
   restart
  end
end
end

fabio =Player.new

  puts "Gold: #{fabio.gold}"
  puts "live : #{fabio.lives}"
  puts "health: #{fabio.health_points}"

  fabio.collectin_treasusre
  puts "Gold: #{fabio.gold}"
  puts "live : #{fabio.lives}"
  puts "health: #{fabio.health_points}"

  fabio.do_battle(4)
  puts "Gold: #{fabio.gold}"
  puts "live : #{fabio.lives}"
  puts "health: #{fabio.health_points}"
