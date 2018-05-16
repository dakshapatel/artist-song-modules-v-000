require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    #add song to the song array on initialization
    @@songs << self
  end

  def self.find_by_name(name)
    #find artists that belong to the song ...
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end
  #####
  def self.reset_all
    #clear songs in the array 
    #@@songs.clear
    self.all.clear
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
  #####
  def self.count
    #count all songs
    self.all.count
  end

  def self.all
    #return song array
    @@songs
  end
end
