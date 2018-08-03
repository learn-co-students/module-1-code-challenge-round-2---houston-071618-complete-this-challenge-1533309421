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
    QueueItem.all.select do |qitem|
      qitem.viewer == self
    end
  end
  
  def queue_movies
    my_movies = []
    self.queue_items.map do |qmovies|
      my_movies << qmovies.movie
    end
    my_movies
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    
  end

end
