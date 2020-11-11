require 'pry'
Muscle.destroy_all
Exercise.destroy_all
User.destroy_all



Muscle.create(name: "Legs", subgroup: "Quadriceps")
Muscle.create(name: "Legs", subgroup: "Hamstrings")
Muscle.create(name: "Legs", subgroup: "Glutes")
Muscle.create(name: "Legs", subgroup: "Calves")
Muscle.create(name: "Arms", subgroup: "Biceps")
Muscle.create(name: "Arms", subgroup: "Triceps")
Muscle.create(name: "Arms", subgroup: "Forearms")
Muscle.create(name: "Shoulders", subgroup: "Deltoids")
Muscle.create(name: "Back", subgroup: "Trapezius")
Muscle.create(name: "Back", subgroup: "Latissimus Dorsi")
Muscle.create(name: "Chest", subgroup: "Pectoralis Major")
Muscle.create(name: "Chest", subgroup: "Pectoralis Minor")
Muscle.create(name: "Abs", subgroup: "Upper Abdominals")
Muscle.create(name: "Abs", subgroup: "Lower Abdominals")
Muscle.create(name: "Abs", subgroup: "Obliques")

hammy = Muscle.find_by(subgroup: "Hamstrings")
quad = Muscle.find_by(subgroup: "Quadriceps")
glutes = Muscle.find_by(subgroup: "Glutes")
calves = Muscle.find_by(subgroup: "Calves")
bi = Muscle.find_by(subgroup: "Biceps")
tri = Muscle.find_by(subgroup: "Triceps")
fore = Muscle.find_by(subgroup: "Forearms")
delt = Muscle.find_by(subgroup: "Deltoids")
traps = Muscle.find_by(subgroup: "Trapezius")
lat = Muscle.find_by(subgroup: "Latissimus Dorsi")
pec_major = Muscle.find_by(subgroup: "Pectoralis Major")
pec_minor = Muscle.find_by(subgroup: "Pectoralis Minor")
upper_abs = Muscle.find_by(subgroup: "Upper Abdominals")
lower_abs = Muscle.find_by(subgroup: "Lower Abdominals")
obl = Muscle.find_by(subgroup: "Obliques")



#Create exercise instances here 

#hammy exercises
Exercise.create(name: "Good Morning", muscle_id: hammy.id , exercise_set: 3, set_reps: 10, demonstration: "Stand with your feet hip-width apart and and place your fingertips gently behind your ears. Keeping your back flat and core braced, push your hips back, lowering your torso until it is nearly parallel to the floor. Pause, and then return to the starting position.")

Exercise.create(name: "Machine Leg Curl" , muscle_id: hammy.id , exercise_set: 3, set_reps: 10, demonstration: "Set up in a leg curl machine and select a moderate amount of weight. Your calves should be against the leg piece of the machine. Flex at the knees to curl the leg piece back to your hamstrings; pause when it touches your hamstrings. Slowly return to the start." )

Exercise.create(name: "Deadlift", muscle_id: hammy.id , exercise_set: 3, set_reps: 8, demonstration: "With feet shoulder-width apart and arms just outside of the legs, push the hips back as far as possible then bend the knee far enough to reach the bar. Keeping your core tight and your spine as tall as possible, pull the bar from the ground by standing tall and pulling the hips back to your standing position. Slowly lower the bar back to the ground, pushing your hips back as you do. ")



#quad exercises 
Exercise.create(name: , muscle_id: quad.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: quad.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: quad.id, exercise_set: , set_reps: , demonstration: )

#glute exercises
Exercise.create(name: , muscle_id: glutes.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: glutes.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: glutes.id, exercise_set: , set_reps: , demonstration: )

#calf exercises
Exercise.create(name: , muscle_id: calves.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: calves.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: calves.id, exercise_set: , set_reps: , demonstration: )

#bi exercises
Exercise.create(name: , muscle_id: bi.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: bi.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: bi.id, exercise_set: , set_reps: , demonstration: )


#tri exercises
Exercise.create(name: , muscle_id: tri.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: tri.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: tri.id, exercise_set: , set_reps: , demonstration: )


#fore exercises
Exercise.create(name: , muscle_id: fore.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: fore.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: fore.id, exercise_set: , set_reps: , demonstration: )


#delt
Exercise.create(name: , muscle_id: delt.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: delt.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: delt.id, exercise_set: , set_reps: , demonstration: )


#trap
Exercise.create(name: , muscle_id: traps.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: traps.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: traps.id, exercise_set: , set_reps: , demonstration: )


#lat
Exercise.create(name: , muscle_id: lat.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: lat.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: lat.id, exercise_set: , set_reps: , demonstration: )

#pec major
Exercise.create(name: , muscle_id: pec_major.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: pec_major.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: pec_major.id, exercise_set: , set_reps: , demonstration: )

#pec minor
Exercise.create(name: , muscle_id: pec_minor.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: pec_minor.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: pec_minor.id, exercise_set: , set_reps: , demonstration: )

#upper abs
Exercise.create(name: , muscle_id: upper_abs.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: upper_abs.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: upper_abs.id, exercise_set: , set_reps: , demonstration: )

#lower abs
Exercise.create(name: , muscle_id: lower_abs.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: lower_abs.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: lower_abs.id, exercise_set: , set_reps: , demonstration: )

#obl
Exercise.create(name: , muscle_id: obl.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: obl.id, exercise_set: , set_reps: , demonstration: )
Exercise.create(name: , muscle_id: obl.id, exercise_set: , set_reps: , demonstration: )

binding.pry
