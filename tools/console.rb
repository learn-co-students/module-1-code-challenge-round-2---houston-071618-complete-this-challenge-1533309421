require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
#leave this here to ensure binding.pry isn't the last line

scott = Viewer.new("Scott")
josh = scott = Viewer.new("Josh")
jack = scott = Viewer.new("Jack")

scary_movie = Movie.new("Scary Movie")
forest_gump = Movie.new("Forest Gump")

q_time1 = QueueItem.new(scott, scary_movie, 5)
q_time2 = QueueItem.new(josh, forest_gump, 4)
q_time3 = QueueItem.new(jack, scary_movie, 1)
q_time4 = QueueItem.new(scott, forest_gump)

QueueItem.all

scott.queue_items
scott.queue_movies
scott.add_movie_to_queue("Jack Reacher", 4)

p q_time1.viewer
