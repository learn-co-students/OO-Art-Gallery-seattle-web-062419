class Painting

  attr_reader :title, :price,:gallery, :artist
  @@all = []

  def initialize(title, price,gallery,artist)
    @gallery=gallery
    @artist=artist
    @title = title
    @price = price
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.total_price
    total_price=0
    @@all.each do |painting|
      total_price += painting.price
    end
    total_price
  end

end
