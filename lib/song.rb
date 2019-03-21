

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create
song = Song.new
song.save
song
end

def self.new_by_name(song_name)
song = self.new
song.name = song_name
song
end

def self.create_by_name(song_name)
song = self.create
song.name = song_name
song
end

def self.find_by_name(song_name)
self.all.find { |song_title| song_title.name == song_name }
end

def self.find_or_create_by_name(song_name)
self.find_by_name(song_name) || self.create_by_name(song_name)
end

def self.alphabetical
self.all.sort_by{|song_name| song_name.name}
end

def self.new_from_filename(filename)
track_info = filename.split(" - ")
artist_name = track_info[0]
song_name = track_info[1].gsub(".mp3", "")
song = self.new
song.name = song_name
song.artist_name = artist_name
song
end

def self.create_from_filename(filename)
track_info = filename.split(" - ")
artist_name = track_info[0]
song_name = track_info[1].gsub(".mp3", "")
song = self.create
song.name = song_name
song.artist_name = artist_name
song
end

def destroy_all
  self.all.clear
end

end
