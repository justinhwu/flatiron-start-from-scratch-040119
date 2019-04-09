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

end
