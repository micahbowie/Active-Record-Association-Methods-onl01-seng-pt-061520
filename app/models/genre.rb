class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Self.songs.count
  end

  def artist_count
    Self.artists.count
  end

  def all_artist_names
   Self.artists.name
  end
end
