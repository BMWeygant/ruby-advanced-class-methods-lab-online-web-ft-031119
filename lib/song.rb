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

def self.new(name)
new_song = Song.new
end





end
