class Users
      attr_reader :username

      def initialize (username)
        @username = username
      end

      def like_program(program)
        Like.new(program, self)
      end

      def show_all_user_likes
        Like.all.select do |like|
            like.user == self
        end
      end

      def unlike_program(program)
        unlike = self.show_all_user_likes.find do |like|
          like.program == program
        end
        Like.all.delete(unlike)
    end

      def get_program_info(program)
        Program.watchers.find do |programs|
          if programs == program
            return programs.info
          end
        end
      end

end
