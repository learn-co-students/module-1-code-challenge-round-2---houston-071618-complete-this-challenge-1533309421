require 'pry'

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
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
    end
  end

end
