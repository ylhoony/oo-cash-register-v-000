class CashRegister
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  # def discount
  #   @discount
  # end

end
