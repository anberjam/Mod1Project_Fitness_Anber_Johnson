require 'pry'
require 'tty-prompt'


class CLI
    attr_accessor :exercise, :muscle, :user, :workout_plan

    def welcome

        font = TTY::Font.new(:standard)
        pastel = Pastel.new

        puts pastel.green(font.write("WorkItOut"))
        puts pastel.green(dumbbell)

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
            plan.choice "Add to Workout Plan"
            plan.choice "See Current Workout Plan"
            plan.choice "Back to Main Menu"
        end
        

        if select_create == "Add to Workout Plan"
            self.navigate_muscle_group

        elsif select_create == "See Current Workout Plan"
            self.current_workout
        else select_create == "Back to Main Menu"
            self.main_menu
        
        end
    end



    def self.current_workout
        system('clear')
        counter = 1

        Workout_Plan.all.each do |workout_plan|
            if workout_plan.user_id == @user.id
             e = Exercise.find(workout_plan.exercise_id)
            puts "Exercise ##{counter}: #{e.name}"
            puts "#{e.demonstration}"
            puts "Sets: #{e.exercise_set}"
            puts "Reps: #{e.set_reps}"
            puts ""
            counter +=1
        end
    end
        prompt = TTY::Prompt.new
        delete_exercise = prompt.ask ("If you want to delete any of the exercises from your workout plan, please enter its number. Otherwise, enter 'N'")
        if delete_exercise == 'N' || delete_exercise == 'n'
            self.workout_menu 
        elsif Workout_Plan.all.count > 0 && delete_exercise.to_i > 0 && delete_exercise.to_i <= Workout_Plan.count
        Workout_Plan.all[delete_exercise.to_i - 1].destroy
        else
            puts "Invalid Entry. Please Try again"
        end
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

        if legs == "Choose Different Muscle"
            self.navigate_muscle_group
        
        else
            system('clear')
            muscle = Muscle.find_by(subgroup: legs)
            counter =1
            exercises_for_muscle = []
            Exercise.find_each do |exercise|
                if exercise.muscle_id == muscle.id
                    exercises_for_muscle << exercise
                    puts "Exercise ##{counter} #{exercise.name}"
                    puts exercise.demonstration
                    puts ""
                    counter+=1
                end
            end
            add_to_wp = prompt.select ("Would you like to add any of these exercises to your workout plans?") do |action|
                action.choice "Add Exercise #1"
                action.choice "Add Exercise #2"
                action.choice "Add Exercise #3"
                action.choice "Choose Different Muscle"
            end

            if add_to_wp == "Add Exercise #1"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[0].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[0].id, user_id: @user.id)
                end

            elsif add_to_wp == "Add Exercise #2"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[1].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[1].id, user_id: @user.id)
                end
            elsif add_to_wp == "Add Exercise #3"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[2].id) == nil
                     Workout_Plan.create(exercise_id: exercises_for_muscle[2].id, user_id: @user.id)
                end
            elsif add_to_wp == "Choose Different Muscle"
                self.navigate_muscle_group
            end
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

        if arms == "Choose Different Muscle"
            self.navigate_muscle_group
        
        else
            system('clear')
            muscle = Muscle.find_by(subgroup: arms)
            counter =1
            exercises_for_muscle = []
            Exercise.find_each do |exercise|
                if exercise.muscle_id == muscle.id
                    exercises_for_muscle << exercise
                    puts "Exercise ##{counter} #{exercise.name}"
                    puts exercise.demonstration
                    puts ""
                    counter+=1
                end
            end
            add_to_wp = prompt.select ("Would you like to add any of these exercises to your workout plans?") do |action|
                action.choice "Add Exercise #1"
                action.choice "Add Exercise #2"
                action.choice "Add Exercise #3"
                action.choice "Choose Different Muscle"
            end

            if add_to_wp == "Add Exercise #1"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[0].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[0].id, user_id: @user.id)
                end

            elsif add_to_wp == "Add Exercise #2"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[1].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[1].id, user_id: @user.id)
                end
            elsif add_to_wp == "Add Exercise #3"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[2].id) == nil
                     Workout_Plan.create(exercise_id: exercises_for_muscle[2].id, user_id: @user.id)
                end
            elsif add_to_wp == "Choose Different Muscle"
                self.navigate_muscle_group
            end
        end
    end

    def self.chest_muscles
        prompt = TTY::Prompt.new
        chest = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Pectoralis Major"
            muscle.choice "Pectoralis Minor"
            muscle.choice "Choose Different Muscle"
        end  
        #muscle = Muscle.find_by(subgroup: chest)

        if chest == "Choose Different Muscle"
            self.navigate_muscle_group

        else
            system('clear')
            muscle = Muscle.find_by(subgroup: chest)
            counter =1
            exercises_for_muscle = []
            Exercise.find_each do |exercise|
                if exercise.muscle_id == muscle.id
                    exercises_for_muscle << exercise
                    puts "Exercise ##{counter} #{exercise.name}"
                    puts exercise.demonstration
                    puts ""
                    counter+=1
                end
            end
            add_to_wp = prompt.select ("Would you like to add any of these exercises to your workout plans?") do |action|
                action.choice "Add Exercise #1"
                action.choice "Add Exercise #2"
                action.choice "Add Exercise #3"
                action.choice "Choose Different Muscle"
            end

            if add_to_wp == "Add Exercise #1"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[0].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[0].id, user_id: @user.id)
                end

            elsif add_to_wp == "Add Exercise #2"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[1].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[1].id, user_id: @user.id)
                end
            elsif add_to_wp == "Add Exercise #3"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[2].id) == nil
                     Workout_Plan.create(exercise_id: exercises_for_muscle[2].id, user_id: @user.id)
                end
            elsif add_to_wp == "Choose Different Muscle"
                self.navigate_muscle_group
            end
        end
    end

    def self.shoulder_muscles
        prompt = TTY::Prompt.new
        shoulder = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Deltoids"
            muscle.choice "Choose Different Muscle"
        end

        if shoulder == "Choose Different Muscle"
            self.navigate_muscle_group

        else
            system('clear')
            muscle = Muscle.find_by(subgroup: shoulder)
            counter =1
            exercises_for_muscle = []
            Exercise.find_each do |exercise|
                if exercise.muscle_id == muscle.id
                    exercises_for_muscle << exercise
                    puts "Exercise ##{counter} #{exercise.name}"
                    puts exercise.demonstration
                    puts ""
                    counter+=1
                end
            end
            add_to_wp = prompt.select ("Would you like to add any of these exercises to your workout plans?") do |action|
                action.choice "Add Exercise #1"
                action.choice "Add Exercise #2"
                action.choice "Add Exercise #3"
                action.choice "Choose Different Muscle"
            end

            if add_to_wp == "Add Exercise #1"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[0].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[0].id, user_id: @user.id)
                end

            elsif add_to_wp == "Add Exercise #2"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[1].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[1].id, user_id: @user.id)
                end
            elsif add_to_wp == "Add Exercise #3"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[2].id) == nil
                     Workout_Plan.create(exercise_id: exercises_for_muscle[2].id, user_id: @user.id)
                end
            elsif add_to_wp == "Choose Different Muscle"
                self.navigate_muscle_group
            end
        end
    end

    def self.back_muscles
        prompt = TTY::Prompt.new
        back = prompt.select ("Which muscle would you like to focus on?") do |muscle|
            muscle.choice "Trapezius"
            muscle.choice "Latissimus Dorsi"
            muscle.choice "Choose Different Muscle"
        end
        
        if back == "Choose Different Muscle"
            self.navigate_muscle_group

        else
            system('clear')
            muscle = Muscle.find_by(subgroup: back)
            counter =1
            exercises_for_muscle = []
            Exercise.find_each do |exercise|
                if exercise.muscle_id == muscle.id
                    exercises_for_muscle << exercise
                    puts "Exercise ##{counter} #{exercise.name}"
                    puts exercise.demonstration
                    puts ""
                    counter+=1
                end
            end
            add_to_wp = prompt.select ("Would you like to add any of these exercises to your workout plans?") do |action|
                action.choice "Add Exercise #1"
                action.choice "Add Exercise #2"
                action.choice "Add Exercise #3"
                action.choice "Choose Different Muscle"
            end

            if add_to_wp == "Add Exercise #1"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[0].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[0].id, user_id: @user.id)
                end

            elsif add_to_wp == "Add Exercise #2"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[1].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[1].id, user_id: @user.id)
                end
            elsif add_to_wp == "Add Exercise #3"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[2].id) == nil
                     Workout_Plan.create(exercise_id: exercises_for_muscle[2].id, user_id: @user.id)
                end
            elsif add_to_wp == "Choose Different Muscle"
                self.navigate_muscle_group
            end
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

        if ab == "Choose Different Muscle"
            self.navigate_muscle_group
 
        else
            system('clear')
            muscle = Muscle.find_by(subgroup: ab)
            counter =1
            exercises_for_muscle = []
            Exercise.find_each do |exercise|
                if exercise.muscle_id == muscle.id
                    exercises_for_muscle << exercise
                    puts "Exercise ##{counter} #{exercise.name}"
                    puts exercise.demonstration
                    puts ""
                    counter+=1
                end
            end
            add_to_wp = prompt.select ("Would you like to add any of these exercises to your workout plans?") do |action|
                action.choice "Add Exercise #1"
                action.choice "Add Exercise #2"
                action.choice "Add Exercise #3"
                action.choice "Choose Different Muscle"
            end

            if add_to_wp == "Add Exercise #1"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[0].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[0].id, user_id: @user.id)
                end

            elsif add_to_wp == "Add Exercise #2"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[1].id) == nil
                    Workout_Plan.create(exercise_id: exercises_for_muscle[1].id, user_id: @user.id)
                end
            elsif add_to_wp == "Add Exercise #3"
                if Workout_Plan.find_by(exercise_id: exercises_for_muscle[2].id) == nil
                     Workout_Plan.create(exercise_id: exercises_for_muscle[2].id, user_id: @user.id)
                end
            elsif add_to_wp == "Choose Different Muscle"
                self.navigate_muscle_group
            end
        end
    end
  

    def self.close
        system("clear")
        sleep(1)
        puts "See you on your next workout!"
        exit
    end


end
