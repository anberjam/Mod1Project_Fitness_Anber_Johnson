class Workout_Plan < ActiveRecord::Base
    :workout_plan has_many :exercises
    :workout_plan belongs_to :user
    

end