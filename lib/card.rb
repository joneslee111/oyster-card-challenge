class Oystercard 
  attr_reader :balance
  MAX_BALANCE = 90

  def initialize
    @balance = 0
  end

  
  def top_up(amount)
    fail 'ERROR: Cannot add. Balance will exceed #{MAX_BALANCE}' if @balance + amount > 90
    @balance += amount 
    return @balance
  end 

  def deduct(amount)
    @balance -= amount
    return @balance
  end

end 

# irb --> card.new --> card.topup(££) 