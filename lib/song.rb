require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #can initialize a song
  def initialize
    @@songs << self
  end

  #has an artist
  def artist=(artist)
    @artist = artist
  end

  #can find a song by name
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end


  #####
  def self.reset_all
    #clear songs in the array
    #@@songs.clear
    self.all.clear
  end


  # can count how many songs have been created
  def self.count
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
