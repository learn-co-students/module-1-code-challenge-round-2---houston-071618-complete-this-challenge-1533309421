require_relative '../config/environment.rb'
require_relative '../app/models/viewer.rb'
require_relative '../app/models/queue_item.rb'
require_relative '../app/models/movie.rb'


def reload
  load 'config/environment.rb'
end

movieaddict = Viewer.new("movieaddict")
moviegirl = Viewer.new("moviegirl")
movieguy = Viewer.new("movieguy")

breakfastclub = Movie.new("The Breakfast Club")
fightClub = Movie.new("fightClub")
goonies = Movie.new("goonies")

queue_item1 = QueueItem.new(movieguy, breakfastclub, 5)
queue_item2 = QueueItem.new(moviegirl, fightClub, 6)
queue_item3 = QueueItem.new(movieaddict, goonies, 8)
queue_item3 = QueueItem.new(movieaddict, fightClub, 7)
queue_item3 = QueueItem.new(movieaddict, breakfastclub, 10)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
