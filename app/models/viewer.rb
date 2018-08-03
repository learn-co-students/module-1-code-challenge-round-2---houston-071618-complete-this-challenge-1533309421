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
  QueueItem.all.select do |queueitem|
    queueitem.viewer == self
  end
end

def queue_movies
  queue_items.map do |queue_item|
    queue_item.movie
  end
end

def add_movie_to_queue(movie)
  QueueItem.new(self, movie, nil)
end

# def rate_movie(movie, rating)
#   if queue_movies.
#   else add_movie_to_queue
# end



end
