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
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
    end
  end

  def average_rating
    queue_ratings = queue_items.map do |queue_item|
      queue_item.rating
    end
    queue_ratings.reduce(:+) / queue_ratings.count
  end

  def self.highest_rated
    highest_rated = nil
    average_rating.each do |average_rating|
      highest_rated = average_rating if highest_rated > average_rating
    end
    highest_rated
  end
end
