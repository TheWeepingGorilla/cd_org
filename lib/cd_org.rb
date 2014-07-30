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

  def CD.search arg
    found_cd = nil
    @@collection.each do |item|
      if ((item.title == arg) || (item.artist == arg))
        found_cd = item
      end
    end
    found_cd
  end


  def save
    @@collection << self
    self
  end

end
