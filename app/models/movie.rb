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
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    queue_items.map(&:viewer)
  end

  def average_rating
    count = queue_items.length
    sum = queue_items.map(&:rating).reduce(:+)
    sum / count
  end

  # def self.highest_rated
  #   queue= QueueItem.self.all.select do |item|
  #     item.movie == self
  #   end
  #   queue.map(&:rating).max
  # end
end
