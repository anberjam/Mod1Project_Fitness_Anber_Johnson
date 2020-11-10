class User < ActiveRecord::Base
    has_many :workout_plans
    has_many :exercises, through: :workout_plans
end