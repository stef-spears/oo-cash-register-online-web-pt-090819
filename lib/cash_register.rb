class CashRegister
  
  attr_accessor :total, :discount, :title, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    items = []
  end
  
  def add_item
    self << items
  end 
  
end 
