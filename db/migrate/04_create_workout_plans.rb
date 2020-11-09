class CreateWorkoutPlans < ActiveRecord::Migration[5.1]
    def change
        create_table :workout_plans do |t|
        t.integer :user_id
        end
    end
end