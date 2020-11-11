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
            member.choice "Exit"
        end
        if display_menu == "Returning Member"
            self.login
        elsif display_menu == "New Member"
            self.create_account
        elsif display_menu == "Exit"
            self.close
        end
    end

    def self.create_account
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your gains name:")
        exists = User.find_by(username: username)
        sleep(1)

        if exists == nil
            password = prompt.mask("Protect your gains with a password:")
            @user = User.create(username: username, password: password)
            system('clear')
            self.login
        else
            puts "You shouldn't share gains with someone else, please try a new name."
            sleep(1)
            self.create_account

        # if Username exits try a new user name  
        end
    end

    def self.login
        prompt = TTY::Prompt.new
        username = prompt.ask("Please enter your gains name:")
        password = prompt.mask("Access your gains with your password:")
        user_account = User.find_by(username: username, password: password)
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
            plan.choice "Back to Main Menu"
        end

        if select_create == "Select Workout Plan"
            self.create_account

        elsif select_create == "Create Workout Plan"
            self.navigate_muscle_group

        elsif select_create == "See Current Workout Plan"
            self.current_workout
        else select_create == "Back to Main Menu"
            self.main_menu
        
        end
    end


    def self.select_workout
        prompt = TTY::Prompt.new
        choose_plan = prompt.select ("Please choose a workout ?") do |plan|
            plan.choice "Select Workout Plan"
            plan.choice "Create Workout Plan"
            plan.choice "See Current Workout Plan"
            plan.choice "Back to Main Menu"
        end

    end

    
    

    def self.current_workout
        # Workout_plan.all.select {|plan|plan.user_id == self}
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
            muscle.choice "Choose Different Muscle"
        end

        if legs == "Quadriceps"
        # list exercises here
        elsif legs == "Hamstrings"

        elsif legs == "Glutes"

        elsif legs == "Calves"

        elsif legs == "Choose Different Muscle"
            self.navigate_muscle_group
        end
    end

    def self.arm_muscles
        prompt = TTY::Prompt.new
        arms = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Biceps"
            muscle.choice "Triceps"
            muscle.choice "Forearms"
            muscle.choice "Choose Different Muscle"
        end

        if arms == "Biceps"
        # list exercises here
        elsif arms == "Triceps"

        elsif arms == "Forearms"
        
        elsif arms == "Choose Different Muscle"
            self.navigate_muscle_group
        end
    end

    def self.chest_muscles
        prompt = TTY::Prompt.new
        chest = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Pectoralis Major"
            muscle.choice "Pectoralis Minor"
            muscle.choice "Choose Different Muscle"
        end  
        if chest == "Pectoralis Major"
            #list exercises here
        elsif chest == "Pectoralis Minor"

        elsif chest == "Choose Different Muscle"
            self.navigate_muscle_group
        end
    end

    def self.shoulder_muscles
        prompt = TTY::Prompt.new
        shoulder = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Deltoids"
            muscle.choice "Choose Different Muscle"
        end
        if shoulder = "Deltoids"
            #list excercies
        else shoulder == "Choose Different Muscle"
            self.navigate_muscle_group
        end

        
    end

    def self.back_muscles
        prompt = TTY::Prompt.new
        back = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Trapezius"
            muscle.choice "Latissimus Dorsi"
            muscle.choice "Choose Different Muscle"
        end
        if back == "Trapezius"
            #list exercises
        elsif back == "Latissimus Dorsi"

        elsif back == "Choose Different Muscle"
            self.navigate_muscle_group
        end
    end

    def self.ab_muscles
        prompt = TTY::Prompt.new
        ab = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Upper Abdominals"
            muscle.choice "Lower Abdominals"
            muscle.choice "Obliques"
            muscle.choice "Choose Different Muscle"
        end
        if ab == "Upper Abdominals"
            #list exercises here
        elsif ab == "Lower Abdominals"
        elsif ab == "Obliques"

        elsif ab == "Choose Different Muscle"
            self.navigate_muscle_group
    end
end

    def self.close
        system("clear")
        sleep(1)
        puts "See you on your next workout!"
        exit
    end


end

