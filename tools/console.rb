require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")
movie3 = Movie.new("movie3")

viewer1 = Viewer.new("viewer1")
viewer2 = Viewer.new("viewer2")
viewer3 = Viewer.new("viewer3")

viewer1.add_movie_to_queue(movie1)
viewer2.add_movie_to_queue(movie1)
viewer3.add_movie_to_queue(movie2)
# QueueItem.new(viewer1, movie1)
# QueueItem.new(viewer2, movie1)
# QueueItem.new(viewer3, movie2)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
