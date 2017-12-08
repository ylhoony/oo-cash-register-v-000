class CashRegister
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total=(total)
    @total = total
  end

end
