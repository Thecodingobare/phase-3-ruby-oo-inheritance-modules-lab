require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable

  include Paramable::InstanceMethods


  @@artists = []

  def initialize
    #@@artists << self
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  #   #clear() function in Ruby is used to remove all the elements of the given array and returns the array with no elements.
  # end

  # def self.count
  #   self.all.count
  #   #The count method in Ruby is used to check the length of an array
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  #   #gsub returns a copy of the str with all occurrences of pattern
  #   #substituted for the second argument
  # end

end
