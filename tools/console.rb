require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#movies
movie1 = Movie.new("Movie1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")
movie4 = Movie.new("Movie4")
movie5 = Movie.new("Movie5")

#users
username1 = Viewer.new("Username1")
username2 = Viewer.new("Username2")
username3 = Viewer.new("Username3")
username4 = Viewer.new("Username4")
username5 = Viewer.new("Username5")

#queue_items
queueitem1 = QueueItem.new(username1, movie1, 5)
queueitem2 = QueueItem.new(username2, movie2, 3)
queueitem3 = QueueItem.new(username3, movie3, 4)
queueitem4 = QueueItem.new(username4, movie4, 1)
queueitem5 = QueueItem.new(username5, movie5, 5)

username1.queue_movies
username2.queue_movies
username3.queue_movies
username4.queue_movies
username5.queue_movies

username1.rate_movie(movie2, 1)

movie1.queue_items

username1.add_movie_to_queue(self, movie5, 1)

movie1.viewers

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
