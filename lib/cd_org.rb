class CD

  attr_reader :title, :artist

  def initialize attributes
    @title = attributes[:title]
    @artist = attributes[:artist]
  end
end
