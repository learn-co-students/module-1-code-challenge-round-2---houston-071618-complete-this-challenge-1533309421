class QueueItem

	attr_reader :viewer, :movie, :rating

	@@all = []

	def initialize(viewer, movie, rating = nil)
		@viewer = viewer
		@movie = movie
		@rating = rating
		@@all << self
	end

# + `QueueItem.all`   + returns an array of all `QueueItem`s +
	def self.all
		@@all
	end
  


end
