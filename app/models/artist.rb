class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Self.songs.first.genre 
  end

  def song_count
    Self.songs.count 
  end

  def genre_count
    genre = Self.songs.collect do |song| 
      song.genre 
    end 
    
    s
  end
  
end
