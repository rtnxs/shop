class Product
  attr_accessor :price, :rest

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def initialize(params)
    @rest = params[:rest].to_i
    @price = params[:price].to_f
  end

  def to_s
    "цена: #{price}руб. (осталось #{rest})"
  end

  def update(params)
    params.each do |key, value|
      var = instance_variables.find { |i| i.to_s == "@#{key}" }
      instance_variable_set(var, value)
    end
  end
end
