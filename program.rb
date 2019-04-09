require "pry"
class Program

      @@watchers = []
      attr_reader :name, :genre, :info

      def initialize(name, genre, info)
        @name = name
        @genre = genre
        @info = info
        @@watchers << self
      end


      def self.most_liked
            counts = Hash.new(0)
            Like.all.each { |like_object| counts[like_object.program.name] += 1}
            amount = counts.sort_by {|key, value| value}
            amount[-1]
      end

      def self.most_genres
        counts = Hash.new(0)
          @@watchers.each {|program_object| counts[program_object.genre] += 1}
          amount = counts.sort_by {|key, value| value}
          amount[-1]
      end

      def self.watchers
        @@watchers
      end
end
