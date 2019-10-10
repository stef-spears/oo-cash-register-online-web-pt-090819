class CashRegister
  
  attr_accessor :total
  
  def initialize(discount = @total*(.2))
    @total = 0
  end
  
end 
