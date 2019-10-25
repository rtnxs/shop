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

  def update(params)
    params.each_pair do |key, value|
      var = self.instance_variables.find{|i| i.to_s == "@#{key}"}
      self.instance_variable_set(var, value)
    end
  end
end
