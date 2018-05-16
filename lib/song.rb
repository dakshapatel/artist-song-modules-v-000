require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/findable.rb'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethod
  include Memorable::InstanceMethod

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #can initialize a song
  #def initialize
    ##@@songs << self
    ##like calling Song.all
    #self.class.all << self
  #end

  #keeps track of the songs that have been created
  def self.all
    @@songs
  end

  #has an artist
  def artist=(artist)
    @artist = artist
  end


end
