# require 'pry'
class Artist
	attr_accessor :name
	@@all = []
	
	def initialize(name)
		@name = name
		@songs = []
	end
	
	def songs
		@songs
	end
	
	def add_song(song)
		@songs << song
		song.artist = self
# binding.pry
	end
	
	def self.all
		@@all
	end
	
	def save
		@@all << self
	end
	
# need this method to save any new obj's created in @@all
	def self.create_by_name(artist_name)
		new_artist = self.new(artist_name)
		new_artist.save
		new_artist
	end
	
	def self.find_or_create_by_name(artist_name)
			@@all.detect{ |artist| artist.name == artist_name } || self.create_by_name(artist_name)
	end
	
	def print_songs
		@songs.each { |song| puts song.name }
# binding.pry
	end
end

