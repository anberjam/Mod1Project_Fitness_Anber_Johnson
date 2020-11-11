require 'pry'
require 'tty-prompt'


class CLI
    attr_accessor :exercise, :muscle, :user, :workout_plan

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
            #self.create_account
            

        elsif select_create == "Create Workout Plan"
            #self.create_workout
            self.navigate_muscle_group

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










    def self.navigate_muscle_group
        prompt = TTY::Prompt.new

        muscle_group = prompt.select ("Which body part would you like to work out?") do |body_part|
        body_part.choice "Legs"
        body_part.choice "Arms"
        body_part.choice "Chest"
        body_part.choice "Shoulders"
        body_part.choice "Back"
        body_part.choice "Abs"
        body_part.choice "I would like to return to the main menu"
        end

        if muscle_group == "Legs"
            self.leg_muscles
        elsif muscle_group == "Arms"
            self.arm_muscles
        elsif muscle_group == "Chest"
            self.chest_muscles
        elsif muscle_group == "Shoulders"
            self.shoulder_muscles
        elsif muscle_group == "Back"
            self.back_muscles
        elsif muscle_group == "Abs"
            self.ab_muscles
        elsif muscle_group == "I would like to return to the main menu"
            self.workout_menu
        end
    end

    def self.leg_muscles
        prompt = TTY::Prompt.new
        legs = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Quadriceps"
            muscle.choice "Hamstrings"
            muscle.choice "Glutes"
            muscle.choice "Calves"
        end

        if legs == "Quadriceps"
        # list exercises here
        elsif legs == "Hamstrings"

        elsif legs == "Glutes"

        elsif legs == "Calves"

        end
    end

    def self.arm_muscles
        prompt = TTY::Prompt.new
        arms = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Biceps"
            muscle.choice "Triceps"
            muscle.choice "Forearms"
        end

        if arms == "Biceps"
        # list exercises here
        elsif arms == "Triceps"

        elsif arms == "Forearms"
        
        end
    end

    def self.chest_muscles
        prompt = TTY::Prompt.new
        chest = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Pectoralis Major"
            muscle.choice "Pectoralis Minor"
        end  
        if chest == "Pectoralis Major"
            #list exercises here
        elsif chest == "Pectoralis Minor"

        end
    end

    def self.shoulder_muscles
        prompt = TTY::Prompt.new
        shoulder = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Deltoids"
        end
        #no need for if statements, list exercises here
    end

    def self.back_muscles
        prompt = TTY::Prompt.new
        back = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Trapezius"
            muscle.choice "Latissimus Dorsi"
        end
        if back == "Trapezius"
            #list exercises
        elsif back == "Latissimus Dorsi"

        end
    end

    def self.ab_muscles
        prompt = TTY::Prompt.new
        ab = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Upper Abdominals"
            muscle.choice "Lower Abdominals"
            muscle.choice "Obliques"
        end
        if ab == "Upper Abdominals"
            #list exercises here
        elsif ab == "Lower Abdominals"
        elsif ab == "Obliques"
    end
end    

end

