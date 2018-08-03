require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("user1")
viewer2 = Viewer.new("user2")
viewer3 = Viewer.new("user3")

movie1 = Movie.new("Movie1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")

q1 = QueueItem.new(viewer1, movie1, 5)
q2 = QueueItem.new(viewer2, movie2, 3)
q3 = QueueItem.new(viewer3, movie3, 4)
q4 = QueueItem.new(viewer2, movie1, 2)

v1_add = viewer1.add_movie_to_queue(movie2)
v1_rate = viewer1.rate_movies(movie2, 1)

m1_r = movie1.average_rating
m1_v = movie1.viewers

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
