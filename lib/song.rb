# require 'pry'
class Song
	attr_accessor :name, :artist
	
	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		song_title = filename.split(' - ')[1] # str
		artist_name = filename.split(' - ')[0] # str
		song = self.new(song_title)
		song.artist = Artist.find_or_create_by_name(artist_name)
		song.artist.add_song(song)
# binding.pry
		song
	end
	
end