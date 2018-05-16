require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'

class Song

  extend Memorable::ClassMethods
  include Paramable::InstanceMethod

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

#

  #keeps track of the songs that have been created
  def self.all
    @@songs
  end

  #converts its name to a url friendly parameter
  #def to_param
    #name.downcase.gsub(' ', '-')
  #end
end
