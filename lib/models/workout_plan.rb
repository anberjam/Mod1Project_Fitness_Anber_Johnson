class Workout_Plan < ActiveRecord::Base
    has_many :exercises
    belongs_to :user
end

# def add_excercise(exercise)
#     current_plan = Workout_Plan.create(user_id: user.id, exercise_id: .id)
#     current_plan.limit(2)
# end

# def delete_from_workout_plan(exercise)
    
# end