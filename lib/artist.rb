require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  #put artists in the artist array
    def initialize
      @@artists << self
      #set songs to empty array
      @songs = []
    end

#can find an artist by name
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end



  def self.all3
    #return artist array
    #keeps track of the artists that have been created
    @@artists
  end
  #####
  def self.reset_all
    #can reset the artists that have been created
    self.all.clear
  end
  #####
  def self.count
    #can count how many artists have been created
    #@@artists.count
    self.all.count
  end

  def add_song(song)
    #can have a song added
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
