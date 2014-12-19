class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def each_filename
    basename = "#{name}-#{artist}".downcase.gsub(" ", "-")
    extensions = [".mp3", ".wav", ".aac"]
    extensions.each { |ext| yield basename + ext }
  end
end

song1 = Song.new("Song 1", "Artist 1", 1)
song2 = Song.new("Song 2", "Artist 2", 2)
song3 = Song.new("Song 3", "Artist 3", 3)
song4 = Song.new("Okie From Muskogee", "Merle", 162)
song5 = Song.new("Ramblin' Man", "Hank", 184)
song6 = Song.new("Good Hearted Woman", "Waylon", 178)

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each do |s|
      # puts "Yielding #{s.name}"
      yield s
    end
  end

  def play_songs
    each { |s| s.play }
  end

  def each_tagline
    each { |s| yield "#{s.name} - #{s.artist}" }
  end

  def each_by_artist(artist)
    select { |s| s.artist == artist }.each { |s| yield s }
  end
end

p = Playlist.new("Party Time")
p.add_song(song1)
p.add_song(song2)
p.add_song(song3)
p.add_song(song4)
p.add_song(song5)
p.add_song(song6)

# p.each { |song| song.play }
# p.play_songs
# p.each_tagline { |tagline| puts tagline }
# p.each_by_artist("Hank") { |song| song.play }
song1.each_filename { |filename| puts filename }
