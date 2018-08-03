class QueueItem
  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating = nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def viewer
    @viewer
  end

  def movie
    @movie
  end

  def rating
    @rating
  end
end
