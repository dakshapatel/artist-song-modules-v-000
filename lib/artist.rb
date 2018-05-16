require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

#detect artist in the artists array where the 
#artist name is the name
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

#put artists in the artist array
  def initialize
    @@artists << self
    #set songs to empty array 
    @songs = []
  end

  def self.all
    #return artist array
    @@artists
  end

  def self.reset_all
    #clear artists
    self.all.clear
  end

  def self.count
    #count the artists in the artist array 
    @@artists.count
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
    
    name.downcase.gsub(' ', '-')
  end

end
