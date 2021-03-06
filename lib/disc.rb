class Disc < Product
  attr_accessor :year, :singer, :title, :genre

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

  def initialize(params)
    @title = params[:title]
    @singer = params[:singer]
    @genre = params[:genre]
    @year = params[:year].to_i
    super
  end

  def to_s
    "#{to_s_in_total}, #{super}"
  end

  def to_s_in_total
    "Альбом #{singer} - «#{title}», #{genre}, #{year}год"
  end

  def update(params)
    super
  end
end
