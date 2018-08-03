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
    QueueItem.all.select{|item| item.movies == self}

end

   def viewers
     queue_items.map{|viewer| viewer.movies}
   end


     def average_rating
       queue_items = QueueItem.all.select { |QueueItem| QueueItem.movie == self }
       total_ratings = queue_items.reduce(0) {|sum, list|
         list.rating ? sum + list.rating : nil
       }
       total_ratings ? total_ratings/queue_items.length : "No ratings for this film."
     end

   end
