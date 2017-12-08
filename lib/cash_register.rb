class CashRegister
  attr_reader :total, :discount, :items

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
  end

  def items(arr)
    arr.each {|item| @items << item}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount)/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

end
