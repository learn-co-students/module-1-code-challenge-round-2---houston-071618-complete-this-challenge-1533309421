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
    QueueItem.all.select do |queued_item|
      queued_item.movie == self
    end
  end

  def viewers #movie_instance.viewers
    queue_items.map do |queued_item|
      queued_item.viewer
    end
  end

  def average_rating #movie_instance.average_rating
    movie_ratings = queue_items.map do |queued_item|
      queued_item.rating
    end
    get_average = movie_ratings.inject do |sum, rating|
      sum + rating
    end
    get_average.to_f / movie_ratings.size
  end

  def self.highest_rated
    highest_rating_movie = QueueItem.all.reduce do |highest_movie, current_movie|
      #highest_movie.rating > current_movie.rating
      binding.pry
    end
    highest_rating_movie
    # highest_rated_movie = queue_items.reduce do |highest_rated_movie, current_movie|
    #   highest_rated_movie.rating > current_movie.rating
    # end
    # highest_rated_movie

  end
end
