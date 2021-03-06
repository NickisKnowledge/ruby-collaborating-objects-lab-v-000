# require 'pry'
class MP3Importer
	attr_accessor :path
	
	def initialize(path)
		@path = path
	end

# 1) loads all mp3 files in the path directory
# 2) get ride of path, only show 'filename.mp3'
	def files
		Dir.glob("#{self.path}/*.mp3").map { |filename| File.basename(filename) }
# binding.pry
	end
	
	def import
		filenames = self.files #parses files
		filenames.each do |song_files|
			Song.new_by_filename(song_files)
		end
	end

end
