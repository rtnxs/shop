class Product
  attr_accessor :price, :rest
  def initialize(name, *params)
    @price = params[0]
    @rest = params[1]
  end
end
