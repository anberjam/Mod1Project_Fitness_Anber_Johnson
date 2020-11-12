class Exercise < ActiveRecord::Base
    belongs_to :workout_plan
end

def add_excercise(exercise)
    current_plan = Workout_Plan.create(user_id: user.id, exercise_id: self.id)
    current_plan.limit(2)
end