require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  #can be initialized
    def initialize
      @@artists << self
      #set songs to empty array
      @songs = []
    end

  #can find an artist by name
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end


  #keeps track of the artists that have been created
  def self.all
    @@artists
  end

  #can reset the artists that have been created
  def self.reset_all
    self.all.clear
  end

  #can count how many artists have been created
  def self.count
    #@@artists.count
    self.all.count
  end

  #can have a song added
  def add_song(song)
    @songs << song
    song.artist = self
  end

  #knows how many songs it has
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #converts its name to a url friendly parameter
  def to_param
    name.downcase.gsub(' ', '-')
  end

end
