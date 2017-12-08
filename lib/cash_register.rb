class CashRegister
  attr_reader :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total=(total)
    @total = total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
  end

  def apply_discount
    @total = @total * (100 * @discount)
  end

end
