class AddExerciseToWorkoutPlans < ActiveRecord::Migration[5.1]
    def change
        add_column :workout_plans, :exercise_id, :integer
    end
end