require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #can initialize a song
  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    #find artists that belong to the song ...
    @@songs.detect{|a| a.name == name}
  end

  #has an artist
  def artist=(artist)
    @artist = artist
  end
  #####
  def self.reset_all
    #clear songs in the array
    #@@songs.clear
    self.all.clear
  end


  #####
  def self.count
    #count all songs
    self.all.count
  end

  def self.all

    @@songs
  end

  #converts its name to a url friendly parameter
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
