class Basket
  attr_accessor :shopping_list

  def initialize
    @shopping_list = []
  end

  def empty?
    @shopping_list.empty?
  end

  def amount
    @shopping_list.map(&:price).sum
  end
end
