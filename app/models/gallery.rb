class Gallery

  attr_reader :name, :city
  @@all=[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all<<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery==self
    end
  end

  def artists
    array=self.paintings.collect do |painting|
      painting.artist
    end
    array.uniq
  end

  def artist_names
    array=self.paintings.collect do |painting|
      painting.artist.name
    end
    array.uniq
  end

  def most_expensive_painting
    most_expensive=self.paintings.first
    most_price=self.paintings.first.price
    self.paintings.each do |painting|
      if painting.price >most_price
        most_price=painting.price
        most_expensive=painting
      end
    end
    most_expensive
  end

end
