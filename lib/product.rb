class Product
  attr_accessor :price, :rest

  def initialize(params)
    @rest  = params[:rest].to_i
    @price = params[:price].to_f
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def to_s
    "цена: #{price}руб. (осталось #{rest})"
  end
end
