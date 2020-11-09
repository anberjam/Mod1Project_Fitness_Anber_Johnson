class CreateExercises < ActiveRecord::Migration[5.1]
    def change
        create_table :exercises do |t|
        t.integer :workout_plan_id
        t.integer :muscle_id
        t.integer :exercise_set
        t.integer :set_reps
        t.text :demonstration
        end
    end
end