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

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def queue_items
    QueueItem.all.select do |queued_item|
      queued_item.viewer == self
    end
  end

  def queue_movies
    queue_itemes.map do |queued_item|
      queued_item.movie
    end
  end

  def rate_movie(movie, rating)
    viewers_movie = queue_items.find do |queued_item|
      queued_item.movie == movie
      #finds movie
    end

    #viewers_movie << rating (broken)
  end
end
