require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/findable.rb'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethod
  include Memorable::InstanceMethod

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  #can be initialized
    def initialize
      ##@@artists << self
      #like calling Artist.all
      #self.class.all << self
      #set songs to empty array
      super
      @songs = []
    end

    def self.all
      @@artists
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

  #keeps track of the artists that have been created



end
