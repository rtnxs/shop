class ProductCollection
  PRODUCTS_CLASS = [Book, Film, Disc]

  attr_reader :products

  def self.from_dir
    products = []

    PRODUCTS_CLASS.each do |class_name|
      dir_path = "#{__dir__}/../data/#{class_name.to_s.downcase}s"
      Dir["#{dir_path}/*"].
          each { |file| products << class_name.from_file(file) }
    end

    new(products)
  end

  def initialize(products)
    @products = products
  end

  def to_a
    @products
  end

  def sort!(params)
    @products.sort_by!(&(params[:type]))
    @products.reverse! if params[:order] == :desc
    @products
  end

  def sell(index)
    @products[index].rest -= 1
    @products.delete_if {|product| product.rest == 0}
  end
end
