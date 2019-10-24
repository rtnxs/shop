require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/productcollection'

begin
  productcollection = ProductCollection.from_dir
rescue NotImplementedError
  puts "какой-то ребенок пытается создать себя используя статический метод родителя"
end

puts productcollection.sort!(type: :price, order: :desc) #asc desc
