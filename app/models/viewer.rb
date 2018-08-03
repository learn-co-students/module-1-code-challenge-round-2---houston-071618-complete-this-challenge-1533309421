class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|item| item.viewer == self}
  end

  def queue_movies
    queue_items.map{|queue| queue.movie }
  end

  def add_movie_to_queue(movie_instance)
    new_movie = QueueItem.new(self,movie_instance)
  end

  def rate_movies(movie,rating)
    #find movie in queue QueueItem
    movie_found = QueueItem.all.find {|item| item.movie == movie}
    #assign rating to movie
    movie_found.rating = rating
  end
end
