class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |qitem|
      qitem.movie == self
    end
  end

  def queue_viewers
    my_viewers = []
    self.queue_items.map do |qviewers|
      my_viewers << qviewers.viewer
    end
    my_viewers
  end

  def average_rating
    ratings = []
    self.queue_items.map do |qitem|
      ratings << qitem.rating
    end
    (ratings.reduce(:+))/(ratings.length)
  end

  def self.highest_rated
    avg_rating = []
    self.all.each do |movie|
    avg_rating << movie.average_rating
    end
    avg_rating.max
    #returning highest average rating, need movie name
  end

end
