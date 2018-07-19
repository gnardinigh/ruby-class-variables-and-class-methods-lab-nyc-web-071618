require 'pry'



class Song

  attr_accessor :name, :artist, :genre

  @@count=0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|

      if genres_hash[genre]==nil
      genres_hash[genre] = 0
      genres_hash[genre] +=1
      else

      genres_hash[genre] +=1
    end
    end
    genres_hash
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_hash = {}

    @@artists.each do |artist|
      if artist_hash[artist]==nil
        artist_hash[artist] = 0
        artist_hash[artist] +=1
      else
        artist_hash[artist]+=1
      end
    end
    artist_hash
  end


  def initialize(name,artist,genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count+=1
    @@genres << @genre
    @@artists << @artist


  end


end
