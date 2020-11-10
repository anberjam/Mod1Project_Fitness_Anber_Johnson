require 'pry'
require 'tty-prompt'

class CLI

    def welcome
        
        puts "Welcome to Work It Out!"
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

        # if user name exits try a new user name  
        self.login
    end

    def self.login
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your gains name:")
        password = prompt.mask("Access your gains with your password:")
        @user = User.find_by(username: username, password: password)
        if @user

        # @Workout_menu <-- need to build method
        else
            puts "These are not your gains, please try again."
            sleep(2)
            self.main_menu
        end

    end

    def Workout_menu
        prompt = TTY::Prompt.new
        select_create = prompt.select ("Would you like to select or create a workout plan?")

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
