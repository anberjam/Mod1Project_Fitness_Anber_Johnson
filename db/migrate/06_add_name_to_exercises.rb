class AddNameToExercises < ActiveRecord::Migration[5.1]
    def change
        add_column :exercises, :name, :string
    end
end