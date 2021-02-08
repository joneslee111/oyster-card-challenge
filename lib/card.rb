class Oystercard 
  attr_reader :balance
  CONSTANT = 90

  def initialize
    @balance = 0
  end

  
  def top_up(amount)
    fail 'ERROR: Cannot add. Balance will exceed 90' if @balance + amount >= 90
    @balance += amount 
    return @balance

  end 


end 

# irb --> card.new --> card.topup(££) 