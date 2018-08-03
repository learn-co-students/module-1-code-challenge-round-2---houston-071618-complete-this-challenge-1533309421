require_relative '../config/environment.rb'
require_relative '../app/models/movie.rb'
require_relative '../app/models/queue_item.rb'
require_relative '../app/models/viewer.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

thor = Movie.new("Thor")
titanic = Movie.new("Titanic")
rwanda = Movie.new("Hotel Rwanda")

kelly = Viewer.new("Kelly")
emil = Viewer.new("Emil")
suzanne = Viewer.new("Suzanne")

queue1 = QueueItem.new(thor, kelly, 4)
queue2 = QueueItem.new(rwanda, kelly, 5)
queue3 = QueueItem.new(thor, emil, 2)
queue4 = QueueItem.new(titanic, suzanne, 4)
queue5 = QueueItem.new(rwanda, emil, 5)
queue6 = QueueItem.new(titanic, emil, 3)










binding.pry
0 #leave this here to ensure binding.pry isn't the last line