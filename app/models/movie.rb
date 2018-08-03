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
    QueueItem.all.select { |item| item.movie == self }
  end

  def viewers
    queue_items.map { |item| item.viewer }
  end

  def average_rating
    (queue_items.reduce(0.0) do |sum, movie|
      sum += movie.rating
    end) / queue_items.length.round(2)
  end

  # def self.highest_rated
  #   movie_hash = {}
  #   QueueItem.all.map do |item|
  #     item.movie
  #   end

  # end

end
