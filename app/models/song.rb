class Song < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :album_songs
  has_many :albums, through: :album_songs
  has_many :author_songs
  has_many :authors, through: :author_songs
  has_many :singer_songs
  has_many :singers, through: :singer_songs
  has_many :comments
  has_many :likes
  has_one :lyric
end
