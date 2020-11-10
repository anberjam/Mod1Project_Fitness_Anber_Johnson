require 'pry'
require 'tty-prompt'

class CLI

    def welcome
        
        puts dumbbell

    end


    def self.main_menu
        prompt = TTY::Prompt.new
        display_menu = prompt.select ("Are you a returning member or a new member?") do |member|
            member.choice "Returning Member"
            member.choice "New Member"
        end
        if display_menu == "Returning Member"
            self.login
        else display_menu == "New Member"
            self.create_account
        end
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
            system('clear')
            self.main_menu
        end

    end




    def dumbbell
   "
      ______                  ______
     |      |			     |      |
  ___|      |			     |      |____
 |   |      |                | 	    |    |
 |   |      |________________|      |    | 
 |   | 25LBS|________________| 25LBS|    |
 |   |      |                |      |    |
 |___|      |                |      |____|
     |	    |                |      |
     |______|                |______|  
     
     "

    end

end
