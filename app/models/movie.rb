class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

# + `Movie.all`
#   + returns an array of all `Movie`
  def self.all
    @@all
  end

  # + `Movie#queue_items`
#   + returns an array of all the `QueueItem` instances that contain this movie
	def queue_items
		QueueItem.all.select do |qitem|
			qitem.movie == self
		end
	end

	# + `Movie#viewers`
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
	def viewers
		queue_items.map do |qitem|
			qitem.viewer
		end
	end

	#Helper method for Movie#average_rating
	def ratings
		queue_items.map do |qitem|
			qitem.rating
		end
	end

	# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
	def average_rating
		ratings.reduce(:+) / ratings.size.to_f
	end

# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
	def self.highest_rated
		self.all.max_by(&:average_rating)
	end


end

