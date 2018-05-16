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



  def self.all
    #return artist array
    @@artists
  end
  
  #can reset the artists that have been created
  def self.reset_all
    self.all.clear
  end
  #####
  def self.count
    #count the artists in the artist array
    #@@artists.count
    self.all.count
  end

  def add_song(song)
    #add song to the songs array
    @songs << song
    #set the artist to the song
    song.artist = self
  end

  def add_songs(songs)
    #iterate through each song and add the song
    songs.each { |song| add_song(song) }
  end

  def to_param
    #converts its name to a url friendly parameter
    name.downcase.gsub(' ', '-')
  end

end
