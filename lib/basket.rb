class Basket
  attr_accessor :shopping_list

  def initialize
    @shopping_list = []
  end

  def empty?
    @shopping_list.empty?
  end

  def total
    @shopping_list.map(&:price).sum
  end

  def total_list
    @shopping_list.each_with_object({}) do |product, amount|
      amount[product] = shopping_list.count(product)
    end
  end
end
