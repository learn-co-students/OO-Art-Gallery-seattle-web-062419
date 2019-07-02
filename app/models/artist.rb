class Artist

  attr_reader :name, :years_experience
  @@all=[]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all<<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist==self
    end
  end

  def galleries
    array=self.paintings.collect do |painting|
      painting.gallery
    end
    array.uniq
   
  end

  def cities
    array=self.paintings.collect do |painting|
      painting.gallery.city
    end
    array.uniq
  end

  def self.total_experience
    total=0
    @@all.each do |artist|
      total += artist.years_experience
    end
    total
  end

  def self.most_prolific
    most=@@all.first
    size=@@all.first.paintings.size
    @@all.each do |artist|
      if artist.paintings.size >=size
         size=artist.paintings.size
         most=artist
      end
    end
    most
  end

  def create_painting(title,price,gallery)
      Painting.new(title,price,gallery,self)
  end



end
