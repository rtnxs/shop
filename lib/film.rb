class Film < Product
  attr_accessor :year, :director, :title

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true)
    new(
      title: lines[0],
      director: lines[1],
      year: lines[2],
      price: lines[3],
      rest: lines[4]
    )
  end

  def initialize(params)
    @title = params[:title]
    @director = params[:director]
    @year = params[:year].to_i
    super
  end

  def to_s
    "Фильм «#{title}», реж. #{director}, #{year}год, #{super}"
  end

  def update(params)
    super
  end
end
