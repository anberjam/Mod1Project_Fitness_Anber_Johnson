class User < ActiveRecord::Base
    :user has_many :workout_plans
    :user has_many :exercises through: :workout_plans
end