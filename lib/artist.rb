require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/findable.rb'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethod

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  #can be initialized
    def initialize
      @@artists << self
      #set songs to empty array
      @songs = []
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
  def self.all
    @@artists
  end

  #converts its name to a url friendly parameter
  #def to_param
    #name.downcase.gsub(' ', '-')
  #end

end
