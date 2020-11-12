class User < ActiveRecord::Base
    has_many :workout_plans
    has_many :exercises, through: :workout_plans

    def add_workout_plan
        Workout_Plan.create(user_id: self.id)
    end


end