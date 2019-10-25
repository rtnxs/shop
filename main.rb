require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disc'
require_relative 'lib/basket'
require_relative 'lib/product_collection'

productcollection = ProductCollection.from_dir

# по ключу=>значению order: :desc производится сортировка по убыванию
productcollection.sort!(type: :price, order: :desc)
basket = Basket.new

choice = -1
while choice != 0 && productcollection.products.any?
  goods = productcollection.products
  goods.each_with_index do |product, index|
    puts "#{index + 1}. #{product}"
  end
  puts "0. Выход"

  puts "\nЧто хотите купить:"
  choice = STDIN.gets.chomp
  choice = -1 if choice.to_i.to_s != choice
  choice = choice.to_i

  if (1..goods.size).include?(choice)
    basket.shopping_list << goods[choice - 1]
    productcollection.sell(choice - 1)
    puts "\nВы выбрали #{basket.shopping_list.last}"
    puts "Всего товаров на сумму: #{basket.amount} руб.\n\n"
  else
    puts "\nНе правильно набран номер. Попробуйте позвонить " \
      "позднее\n\n" unless choice == 0
  end
end

if basket.empty?
  puts "Вы ничего так и не выбрали, приходите ещё.\n\n"
else
  puts "Вы купили:\n\n"
  puts basket.shopping_list
  puts "\nС Вас - #{basket.amount} руб. Спасибо за покупки!"
end
