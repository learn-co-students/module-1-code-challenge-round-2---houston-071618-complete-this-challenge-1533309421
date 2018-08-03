class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|item| item.movie == self}
  end

  def viewers
    queue_items.map{|item| item.viewer}
  end

  def average_rating
    all_ratings = queue_items.map{|item| item.rating}
    total = all_ratings.reduce(:+)
    number_ratings = all_ratings.length
    avg = total/number_ratings
  end

  def self.highest_rated
    #get all movies in QueueItem
    all_movies = Movie.all
    #get ratings for movie
    all_ratings = all_movies.map{|movie| movie}
    #get highest rating for movie
  end

end
