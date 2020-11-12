class Workout_Plan < ActiveRecord::Base
    has_many :exercises
    belongs_to :user
end

# def workout_plan_names
#     @workout_plan_names = []
#     self.all.each do |wp|
#         @workout_plan_names << wp.name
#     end
# end

# def add_excercise(exercise)
#     Workout_Plan.create(exercise_id: exercise.id, user_id: @user.id)
# end

# def delete_from_workout_plan(exercise)
    
# end