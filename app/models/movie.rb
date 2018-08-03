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
    QueueItem.all.select do |q|
      q.movie == self 
    end 
  end 

  def viewers
    queue_items.map do |item|
      item.viewer
    end 
  end 
  
  def average_rating
    sum = 0
    ratings = queue_items.map do |q|
      q.rating
    end 
    ratings.each do |rating|
      sum += rating
    end
    sum / rating.length 


end
