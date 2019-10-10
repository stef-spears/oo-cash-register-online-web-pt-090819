class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title)
    title << items
  end 
  
end 
