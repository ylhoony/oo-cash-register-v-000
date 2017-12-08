class CashRegister
  attr_reader :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total=(total)
    @total = total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times {|i| @items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (100 - @discount)/100
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
