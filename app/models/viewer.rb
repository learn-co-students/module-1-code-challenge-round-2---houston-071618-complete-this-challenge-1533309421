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
    #this method should return an array of
    QueueItem.all.select { |item| item.viewer == self }
  end

  def queue_movies
    #this method should return an array of `Movie`
    queue_items.map { |item| item.movie }
  end

  def add_movie_to_queue(movie, rating)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if queue_movies.include?(movie)
      queue_items.reduce do |rating, item|
        if item.movie == movie
          item.rating = rating
        end
      end
    else
      add_movie_to_queue(movie, rating)
    end
  end
end
