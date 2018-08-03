class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |item|
     item.viewer == self
    end
  end

  def queue_movies
   queue_items.map(&:movie)
  end

  def add_movie_to_queue(movie)
    Movie.new(movie)
  end

  def rate_movie(movie, rating)
    if queue_movies.include?(movie)
      # QueueItem.rating(rating)
      puts "Sorry, you've already rated this movie."
    else
      QueueItem.new(self, movie, rating)
    end
  end
end
