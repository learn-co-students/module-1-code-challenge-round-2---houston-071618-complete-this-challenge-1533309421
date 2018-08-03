require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# viewer

bob = Viewer.new("Bob")
jon = Viewer.new("Jon")
sally = Viewer.new("Sally")

# movie
star_wars = Movie.new("Star Wars")
friends = Movie.new("Friends")
princess_bride = Movie.new("Princess Bride")

#add_movie

#queue_item
bob_star_wars = QueueItem.new(bob, star_wars, 5)
bob_friends = QueueItem.new(bob, friends, 3)
sally_star_wars = QueueItem.new(sally, star_wars, 5)
sally_friends = QueueItem.new(sally, friends, 4)
jon_star_wars = QueueItem.new(jon, star_wars, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
