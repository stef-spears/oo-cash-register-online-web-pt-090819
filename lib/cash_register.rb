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
    if quantity = 0 
    # add the title to items
      @items << title
    # and add the price to the total 
      @total += price
    # if you receive a title and quantity > 1
    elsif quantity.positive? 
    # add title to items "quantity" times
      quantity.times do |title|
        @items << title 
        @total += price
      end
    #and add the price reflecting multiple quantities to the total 
         #* quantity
      
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
