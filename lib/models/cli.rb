require 'pry'
require 'tty-prompt'

class CLI

    def welcome
        
        puts dumbbell

    end


    def self.main_menu
        prompt = TTY::Prompt.new
        display_menu = prompt.select ("Are you a returning member or a new member?")


    end

    def self.create_account
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your gains name:")
        password = prompt.mask("Protect your gains with a password:")
        @user = User.create(username: username, password: password)
        system('clear')
        self.login
    end

    def self.login
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your gains name:")
        password = prompt.mask("Access your gains with your password:")
        @user = User.find_by(username: username, password: password)
        if @user

        # @Workout_plans <-- need to build method
        else
            puts "These are not your gains, please try again."
            system
        end

    end




    def dumbbell
   "
      ______                  ______
     |      |			     |      |
  ___|      |			     |      |____
 |   |      |                | 	    |    |
 |   |      |________________|      |    | 
 |   |      |________________|      |    |
 |   |      |                |      |    |
 |___|      |                |      |____|
     |	    |                |      |
     |______|                |______|  
     
     "

    end

end
