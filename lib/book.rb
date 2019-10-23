class Book < Product
  attr_accessor :name

  def initialize(name, *params)
    @name = name
    super
  end
end
