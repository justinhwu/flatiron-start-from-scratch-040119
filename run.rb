require_relative "./program.rb"
require_relative "./user.rb"
require_relative "./like.rb"

bob = Users.new("Bob")
joe = Users.new("Joe")
matt = Users.new("matt")
josh = Users.new("josh")

#name, genre, info, user
program1 = Program.new("Hi", "Action", "a")
program2 = Program.new("Hello", "Action", "b")
program3 = Program.new("Hey", "Action", "c")
program4 = Program.new("c", "Comedy", "c")
program4 = Program.new("d", "Comedy", "d")
program4 = Program.new("e", "horror", "e")



matt.like_program(program1)
bob.like_program(program1)
matt.like_program(program2)
joe.like_program(program3)
josh.like_program(program1)
joe.like_program(program1)
josh.like_program(program2)



puts Program.most_genres
#josh.unlike_program(program2)
puts Program.most_liked
puts josh.get_program_info(program2)
