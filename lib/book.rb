class Book < Product
  attr_accessor :genre, :autor, :title

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true)
    new(
        title: lines[0],
        genre: lines[1],
        autor: lines[2],
        price: lines[3],
        rest: lines[4]
    )
  end

  def initialize(params)
    @title = params[:title]
    @genre = params[:genre]
    @autor = params[:autor]
    super
  end

  def to_s
    "#{to_s_in_total}, #{super}"
  end

  def to_s_in_total
    "Книга «#{title}», автор - #{autor}, Жанр: #{genre}"
  end

  def update(params)
    super
  end
end
