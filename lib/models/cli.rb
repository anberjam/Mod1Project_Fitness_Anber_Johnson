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

        # if Username exits try a new user name  
        self.login
    end

    def self.login
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your gains name:")
        password = prompt.mask("Access your gains with your password:")
        @user = User.find_by(username: username, password: password)
        if @user
            self.workout_menu
     
        else
            puts "These are not your gains, please try again."
            sleep(2)
            self.main_menu
        end

    end

    def self.workout_menu
        prompt = TTY::Prompt.new
        select_create = prompt.select ("Would you like to to do?") do |plan|
            plan.choice "Select Workout Plan"
            plan.choice "Create Workout Plan"
            plan.choice "See Current Workout Plan"
            
        end

        if select_create == "Select Workout Plan"
            self.create_account

        elsif select_create == "Create Workout Plan"
            self.create_workout

        else select_create == "See Current Workout Plan"
            self.current_workout
        
        end
    end
    
    def self.select_workout
        prompt = TTY::Prompt.new

    end

    def self.create_workout

    end

    

    def self.current_workout
    
    end


    def dumbbell
   " 
   
      ______                  ______
     |      |	             |      |
  ___|      |	             |      |____
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
