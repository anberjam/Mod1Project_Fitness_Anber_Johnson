class CreateMuscles < ActiveRecord::Migration[5.1]
    def change
        create_table :muscles do |t|
        t.string :name
        t.string :subgroup
        end
    end
end