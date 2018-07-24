
class BankAccount

  def initialize
    @balance=0
    @interest_rate=3.5
    @account_number=10

  end

  def diposit(cash)
    @balance=+cash
    return @balance
  end

  def withdraw(cash)
    @balance=-cash
    return @balance
  end

 def gain_interest
   @balane=@balance*@interest_rate

end

BankAcc=BankAccount.new
puts "what do you want to do sir? press\"D\" for deposit, \"W\" for withdrawal, and \"B\"\ for balance inquiry"
 service = gets.chomp
 if service == "D"

     puts "How much do you want to deposit"
       amount= gets.chomp.to_i
       new_balance=BankAcc.diposit(amount)
     puts "Your current balance is#{new_balance}"

 elsif service =="W"
    puts "How much do you want to withdraw"
     amount= gets.chomp.to_i
     new_balance=BankAcc.withdraw(amount)
    puts "Your current balance is#{new_balance}"

 elsif service="B"
   new_balance=BankAcc.gain_interest
   puts "Your current balance is#{new_balance}"

 else
   puts "You enterd incorrect input"
end
end
