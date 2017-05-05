class Artist

  attr_accessor :songs, :genres
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.map do |song|
      song.genre
    end
  end

end
