class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, :uniqueness => {:scope => [:artist_name, :release_year]}
  validates :release_year, :if => :released?, numericality: { less_than_or_equal_to: 2017 }
  # validates :release_year,
  validates :artist_name, presence: true
end
