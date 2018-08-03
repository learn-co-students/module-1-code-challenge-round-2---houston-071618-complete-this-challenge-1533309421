require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Viewers
erica = Viewer.new("Erica")
sam = Viewer.new("Sam")
jim = Viewer.new("Jim")

#Movies
titanic = Movie.new("Titanic")
holly = Movie.new("Holly")


#Queue_items
q1 = QueueItem.new(erica, titanic, 3)
q2 = QueueItem.new(erica, holly)
q3 = QueueItem.new(sam, holly, 5)
q4 = QueueItem.new(jim, holly, 5)



binding.pry
"Hello World" #leave this here to ensure binding.pry isn't the last line
