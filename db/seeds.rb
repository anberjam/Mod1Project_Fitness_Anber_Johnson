require 'pry'

quad = Muscle.create(name: "Legs", subgroup: "Quadriceps")
hammy = Muscle.create(name: "Legs", subgroup: "Hamstrings")
glute = Muscle.create(name: "Legs", subgroup: "Glutes")
calf = Muscle.create(name: "Legs", subgroup: "Calves")
bi = Muscle.create(name: "Arms", subgroup: "Biceps")
tri = Muscle.create(name: "Arms", subgroup: "Triceps")
forearm = Muscle.create(name: "Arms", subgroup: "Forearms")
delt = Muscle.create(name: "Shoulders", subgroup: "Deltoids")
trap = Muscle.create(name: "Back", subgroup: "Trapezius")
lat = Muscle.create(name: "Back", subgroup: "Latissimus Dorsi")
pec_major = Muscle.create(name: "Chest", subgroup: "Pectoralis Major")
pec_minor = Muscle.create(name: "Chest", subgroup: "Pectoralis Minor")
upper_ab = Muscle.create(name: "Abs", subgroup: "Upper Abdominals")
lower_ab = Muscle.create(name: "Abs", subgroup: "Lower Abdominals")
oblique = Muscle.create(name: "Abs", subgroup: "Obliques")

#Create exercise instances here 

Exercise.create(muscle_id: , exercise_set: , set_reps: , demonstration: )

create_table :exercises do |t|
    t.integer :workout_plan_id
    t.integer :muscle_id
    t.integer :exercise_set
    t.integer :set_reps
    t.text :demonstration