class QueueItem
  attr_accessor :viewer, :movie, :rating #(:username, :stitle)
  @@all = []

  def initialize(viewer, movie, rating = 1)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
