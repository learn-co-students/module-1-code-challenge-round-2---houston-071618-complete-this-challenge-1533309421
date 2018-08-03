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
    QueueItem.all.select do |queueitem|
      queueitem.movie == self
    end
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
    end
  end

  def average_rating
    total_rating = queue_items.reduce(0.00) do |total, current_queueitem|
      total += current_queueitem.rating
  end
    total_rating/queue_items.length
end

def self.highest_rated
  movie_avg_ratings = self.all.collect do |movie|
    movie.average_rating
  end
  movie_avg_ratings.max
  # movie_avg_ratings.reduce do |movie_instances_total, movie_instance_current|
  #   if movie_instances_total > movie_instance_current
  #     binding.pry
  #     puts movie_instances_total
    end

end
