require 'pry'
require_relative './concerns/memorable.rb'
class Song

  extend Memorable::ClassMethods

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

  # can count how many songs have been created
  #def self.count
    #@@songs.count
    #self.all.count
  ##end

  #keeps track of the songs that have been created
  def self.all
    @@songs
  end

  #can reset the songs that have been created
  #def self.reset_all
    #@@songs.clear
    #self.all.clear
  #end

  #converts its name to a url friendly parameter
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
