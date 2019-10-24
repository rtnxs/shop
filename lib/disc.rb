class Disc < Product
  attr_accessor :year, :singer, :title, :genre

  def initialize(params)
    @title = params[:title]
    @singer = params[:singer]
    @genre = params[:genre]
    @year = params[:year].to_i
    super
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true)
    new(
      title: lines[0],
      singer: lines[1],
      genre: lines[2],
      year: lines[3],
      price: lines[4],
      rest: lines[5]
    )
  end

  def to_s
    "Альбом <<#{title}>>, #{genre}, #{year}год, #{super}"
  end
end
