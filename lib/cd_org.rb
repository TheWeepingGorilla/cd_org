class CD

  attr_reader :title, :artist
  @@collection = []

  def initialize attributes
    @title = attributes[:title]
    @artist = attributes[:artist]
  end

  def CD.all
    @@collection
  end

  def CD.clear
    @@collection = []
  end

  def save
    @@collection << self
    self
  end
end
