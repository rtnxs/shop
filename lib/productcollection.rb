class ProductCollection
  attr_reader :products
  PRODUCTS_CLASS = [Book, Film, Disc]

  def initialize(products)
    @products = products
  end

  def self.from_dir
    products = []

    PRODUCTS_CLASS.each do |class_name|
      dir_path = Dir["#{__dir__}/../data/#{class_name.to_s.downcase}s"].join
      Dir["#{dir_path}/*"].
      each { |file| products << class_name.from_file(file) }
    end

    new(products)
  end

  def to_a
    @products
  end

  def sort!(params)
    @products.sort_by!(&(params[:type]))
    @products.reverse! if params[:order] == :desc
    @products
  end
end
