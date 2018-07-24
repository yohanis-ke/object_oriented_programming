class Paperboy

def initialize(name, experiance, earning)
  @name =name
  @experience =experiance
  @earnings= earning
end
  def quota
  quota_number= 50 + @experience/2
  end


  def deliver(start_address, end_address)
    @experience=end_address - start_address
     if @experience == 50
       @earnings = @experience * 0.25
     elsif @experience < 50
       @earnings = (@experience * 0.25)-2

     elsif @experience > 50
       first_fifty = 50 * 0.25
       above_fifty = (@experience - 50)*0.50
       @earnings = first_fifty + above_fifty
      return @earnings
     end
  end

  def report
  puts "My name is #{@name}, I ve deliverd #{@experience} papers and i've earned #{@earnings} so far"
  end
end

tommy= Paperboy.new("Tommy", 15, "0.0")
tommy.deliver(45,96)
tommy.report

# Tommy.initialize("Tommy", 15, 0.0)
