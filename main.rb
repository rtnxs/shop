require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

book = Book.new("17 обновление", 155, 12)
film = Film.new("Первому игроку приготовиться", 243, 2)

puts "книга: #{book.name} - цена: #{book.price} - количестко: #{book.rest}"
puts "фильм: #{film.name} - цена: #{film.price} - количество: #{film.rest}"
