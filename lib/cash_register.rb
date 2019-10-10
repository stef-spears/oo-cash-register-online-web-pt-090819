class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 0)
    @items << title
    if quantity.positive? 
      @total += price * quantity
    else 
      @total += price
    end
  end 
  
end 
