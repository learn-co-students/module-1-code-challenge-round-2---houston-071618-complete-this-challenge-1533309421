require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cindy = Viewer.new("cindy_v")
daniel = Viewer.new("daniel_s")
carlos = Viewer.new("carlos_s")

movie1 = Movie.new("King Kong")
movie2 = Movie.new("Harry Potter")
movie3 = Movie.new("Star Wars")

first = QueueItem.new(cindy, movie1, 4)
second = QueueItem.new(daniel, movie2, 4)
third = QueueItem.new(cindy, movie3, 5)
fourth = QueueItem.new(carlos, movie1, 2)


binding.pry
 #leave this here to ensure binding.pry isn't the last line
puts "Hello World!"