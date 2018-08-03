require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bob = Viewer.new("Bob")
george = Viewer.new("George")
sally = Viewer.new("Sally")
lucy = Viewer.new("Lucy")

movie1 = Movie.new("Movie1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")
movie4 = Movie.new("Movie4")

queue1 = QueueItem.new(bob, movie1, 3)
queue2 = QueueItem.new(bob, movie2, 5)
queue3 = QueueItem.new(lucy, movie2, 4)
queue2 = QueueItem.new(sally, movie2, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
