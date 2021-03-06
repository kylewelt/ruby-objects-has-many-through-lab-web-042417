class Genre

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.map do |song|
      song.artist
    end
  end

end
