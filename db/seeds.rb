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
Exercise.create(name: "Lunge" , muscle_id: quad.id, exercise_set: 3, set_reps: 12, demonstration: "Start by standing up tall. Step forward with one foot until your leg reaches a 90-degree angle. Lift your front lunging leg to return to the starting position.")
Exercise.create(name: "Squat", muscle_id: quad.id, exercise_set: 5, set_reps: 10, demonstration: "Start standing with feet just wider than hip-width apart, toes pointed slightly out, clasp hands at chest for balance. Initiate the movement by sending the hips back. Bend knees to lower down as far as possible with chest lifted in a controlled movement. Keep lower back neutral. Press through heels to stand back up to starting position. Repeat.")
Exercise.create(name: "Bulgarian Split Squat", muscle_id: quad.id, exercise_set: 3, set_reps: 8, demonstration: "Stand facing away from the bench, holding a barbell across your upper back. Have one leg resting on the bench behind you, laces down. Squat with your standing leg until the knee of your trailing leg almost touches the floor. Push up through your front foot to return to the start position.")

#glute exercises
Exercise.create(name: "Glute Bridge" , muscle_id: glutes.id, exercise_set: 4, set_reps: 15, demonstration: "Lie on you back with your hips and knees flexed, feet on the ground. From this position, raise your butt off of the ground to a height where your body makes a straight line from your knees to your shoulders. To make the exercise more intense, you can add weight by letting a barbell rest on your hips as you complete the motion, or you can put your feet on a slightly higher surface such as a step or a bench." )
Exercise.create(name: "Sumo Squat" , muscle_id: glutes.id, exercise_set: 3, set_reps: 10, demonstration: "Stand with your feet wider than your shoulders, with your toes pointed out at a 45 degree angle and barbell on your shoulder. While keeping your back straight, descend slowly by bending at the knees and hips as if you are sitting down (squatting). Lower yourself until your quadriceps and hamstrings are parallel to the floor. Return to the starting position by pressing upwards and extending your legs while maintaining an equal distribution of weight on your forefoot and heel.")
Exercise.create(name: "Hip Thrust", muscle_id: glutes.id, exercise_set: 3, set_reps: 8, demonstration: "Start with your shoulder blades against a bench, and your arms spread across it for stability.  If your shoulders don’t reach the bench, you may need to start with your butt slightly off the floor.  Bend your knees to about 90 degrees, and make sure your feet are flat on the floor. Take a big breath in, blow your air out fully, and brace your core. Squeeze your glutes, lift up your hips pushing the barbell up. Hold for a second or two. Slowly release and repeat." )

 

#calf exercises
Exercise.create(name: "Standing Calf Raise", muscle_id: calves.id, exercise_set: 5, set_reps: 10, demonstration: "Holding a dumbbell in your left hand, stand with the ball of your left foot on an elevated surface with your heel hanging off, and your right toes resting on your left ankle. Keeping your core engaged, raise your left heel as high as possible. Slowly lower your heel down below the raised surface until you feel a stretch in your calf. Repeat and do equal reps on both legs." )
Exercise.create(name: "Seated Calf Raise", muscle_id: calves.id, exercise_set: 3, set_reps: 15, demonstration: "Sit tall on a bench or chair with your feet flat on the ground holding two heavy dumbbells on top of your thighs. Keeping your core engaged, lift your heels off the ground as high as possible. Slowly lower your heels back down to the ground, and repeat.")
Exercise.create(name: "Jump Rope", muscle_id: calves.id, exercise_set: 3, set_reps: 40, demonstration: "Holding the handles of a jump rope in each hand, jump with both feet as you spin the rope under you and over your head. Keep your core engaged and your shoulders lowered.")

#bi exercises
Exercise.create(name: "Standing Dumbbell Curl", muscle_id: bi.id, exercise_set: 3, set_reps: 12, demonstration: "Stand holding a dumbbell in each hand with your arms hanging by your sides. Ensure your elbows are close to your torso and your palms facing forward. Keeping your arms stationary, exhale as you curl the weights up to shoulder level while contracting your biceps.")
Exercise.create(name: "Hammer Curl", muscle_id: bi.id, exercise_set: 3, set_reps: 10, demonstration: "Let a pair of dumbbells hang at arm’s length next to your sides with your palms facing your thighs. Don’t move your arms. Instead, bend your elbows and curl the dumbbells as close to your shoulders as possible. Pause at the top – remember to squeeze – before slowly lowering the weight back to the starting position.")
Exercise.create(name: "Zottman Curl", muscle_id: bi.id, exercise_set: 3, set_reps: 10, demonstration: "With your dumbbells hanging by your side, turn your arms so your palms face forward. Without moving your upper arms, bend your elbows and curl the dumbbells towards your shoulder. Pause, then rotate the dumbbells so your palms face forward before slowly returning back to your starting position.")


#tri exercises
Exercise.create(name: "Rope Tricep Pushdown", muscle_id: tri.id, exercise_set: , set_reps: , demonstration: "Attach a rope handle to the high pulley of a cable station. Bend your arms and grab the bar with an overhand grip, your hands shoulder-width apart. Tuck your upper arms next to your sides. Without moving your upper arms, push the bar down until your elbows are locked. Slowly return to the starting position.")
Exercise.create(name: "Overhead Extension", muscle_id: tri.id, exercise_set: , set_reps: , demonstration: "Sit on a bench and grab one dumbbell. Form a diamond shape with both hands to grip the top end of the weight. Raise the dumbbell over your head, keeping your elbows up and your core tight. Lower the dumbbell down the top of your back by bending at the elbow, maintaining your strong chest and keeping your shoulders still. Raise the weight by fully extending your arms, pausing for a count to squeeze at the top of the movement.")
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
