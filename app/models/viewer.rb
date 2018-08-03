class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
    @viewrsqueue = []

  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|item| item.viewer == self }
end
  def queue_movies
    queue_items.map{|item| item.movie}
end


  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
end


  def rate_movie(movie, rating)
    movie_watched = queue_items.find { |w| w.movie == movie }
    movie_watched.rating = rating
  end

end 
