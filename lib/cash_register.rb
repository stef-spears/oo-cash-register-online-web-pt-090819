require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :items
  
  def initialize(discount = 0.0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 0)
    # if you receive a title w/no quantity
    # add the title to items
    # if you receive a title and quantity > 1
    # add title to items "quantity" times
    @items << title
    if quantity.positive? 
      @total += price * quantity
      @items 
    else 
      @total += price
    end
  end 
  
  def apply_discount
    if @discount.positive?
      @total -= (@total * (@discount.to_f/100))
      p "After the discount, the total comes to $#{@total.to_i}."
    else
      p "There is no discount to apply."
    end
    
    #binding.pry
  end 
  
  def items
    @items
  end
  
end 
