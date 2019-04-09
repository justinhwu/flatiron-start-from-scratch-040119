# flatiron-start-from-scratch-040119

Today you'll be building your own model-to-model relationship in a domain of your own choosing.

Deliverables
- Minimum of 3 models
- One model must be a JOIN MODEL
- Minimum of 8 methods, not counting attr_ and initialize methods.

- Netflix

    class Users
        (name, ) - Join Class
          - Liked programs = []

          def add_to_my_list
          end

          def remove_from_my_list
          end

          def like_program
          end

          def get_program_info
          end


    class Program

          @@watchers = []


          def initialize(name, genre, info)
          end

          def percent_liked
           #what percent of total users like the movie
          end

          def most_liked
            #what movie has the most total likes
          end




    class Like

          attr_reader :program, :user

          @@all = []

          def initialize (program, user)
            @program = program
            @user = user
            @@all << self
          end

          def self.all
            @@all
          end
