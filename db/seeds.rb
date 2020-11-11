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
Exercise.create(name: "Rope Tricep Pushdown", muscle_id: tri.id, exercise_set: 3, set_reps: 10, demonstration: "Attach a rope handle to the high pulley of a cable station. Bend your arms and grab the bar with an overhand grip, your hands shoulder-width apart. Tuck your upper arms next to your sides. Without moving your upper arms, push the bar down until your elbows are locked. Slowly return to the starting position.")
Exercise.create(name: "Overhead Extension", muscle_id: tri.id, exercise_set: 3, set_reps: 12, demonstration: "Sit on a bench and grab one dumbbell. Form a diamond shape with both hands to grip the top end of the weight. Raise the dumbbell over your head, keeping your elbows up and your core tight. Lower the dumbbell down the top of your back by bending at the elbow, maintaining your strong chest and keeping your shoulders still. Raise the weight by fully extending your arms, pausing for a count to squeeze at the top of the movement.")
Exercise.create(name: "Bench Dip", muscle_id: tri.id, exercise_set: 3, set_reps: 10, demonstration: "Stand facing away from a bench, grab it with both hands at shoulder-width. Extend your legs out in front of you. Slowly lower your body by flexing at the elbows until your arm at forearm create a 90-degree angle. Using your triceps lift yourself back to the starting position.")


#fore exercises
Exercise.create(name: "Reverse Curl", muscle_id: fore.id, exercise_set: 3, set_reps: 12, demonstration: "Grasp the bar overhand at whatever width is comfortable. Keeping your upper arms against your sides, curl the bar.")
Exercise.create(name: "Towel Cable Row", muscle_id: fore.id, exercise_set: 3, set_reps: 10, demonstration: "Hook a towel to a cable pulley and stand in front of it. Set up to do a row, holding an end of the towel in each hand. Squeeze your shoulder blades together and row the towel to your rib cage.")
Exercise.create(name: "Wrist Curl", muscle_id: fore.id, exercise_set: 3, set_reps: 10, demonstration: "Hold a dumbbell in each hand and sit on a bench, box, or chair. Rest your forearms on your thighs and allow your wrists to bend back over your knees so the weights hang down. Curl the dumbbells up by just flexing your wrists.")


#delt
Exercise.create(name: "Anterior Deltoid Raise", muscle_id: delt.id, exercise_set: 3, set_reps: 15, demonstration: "Stand with your feet hip-width apart, holding a dumbbell in each hand with your arms at your sides. Keeping your arms straight, slowly lift the weights up directly in front of you to shoulder height with your palms facing each other. Lower back down to the starting position and repeat.")
Exercise.create(name: "Callahan Press", muscle_id: delt.id, exercise_set: 3, set_reps: 12, demonstration: "Stand with your feet hip-width apart, holding a dumbbell in each hand. Raise your arms out to your sides with your elbows bent at 90 degrees (a.k.a. goalpost or cactus). Your upper arms should be in line with your shoulders, and your hands should point toward the ceiling. This is the starting position. Bring your forearms in front of you and turn your palms in toward your face. Then reverse the movement to return to the starting position. Press the weights directly above your shoulders, and then reverse the movement to return to the starting position. That’s one rep.")
Exercise.create(name: "Standing Arnold Press", muscle_id: delt.id, exercise_set: 3, set_reps: 10, demonstration: "Stand with your feet hip-width apart, holding a dumbbell in each hand just under your chin, palms facing you. Press the dumbbells overhead as you rotate your palms out until they are facing away from you. Pause at the top, then lower dumbbells back down to start, rotating your palms back toward you. Repeat.")


#trap
Exercise.create(name: "Face Pull", muscle_id: traps.id, exercise_set: 3, set_reps: 12, demonstration: "Set the cable around eye-level. In each hand, grip the rope handles using an overhand grip. Squeeze your shoulder blades as you pull the cable toward your face, keeping your elbows high and your back straight. Bring the cable as close to your face as you can, hold for a moment, and then slowly return to the starting position")
Exercise.create(name: "Dumbell Shrug", muscle_id: traps.id, exercise_set: 4, set_reps: 10, demonstration: "Hold a dumbbell in either hand. Hang your arms at either side of your body, with your palms facing one another. Shrug your shoulders as high as you can and pause for a count in the top position. Return to the starting position and repeat.")
Exercise.create(name: "Barbell Row", muscle_id: traps.id, exercise_set: 3, set_reps: 15, demonstration: "Grab the barbell using an overhand grip, with your hands just past shoulder-width apart. Hold the barbell at arm’s length in front of you. Bend at the hips and knees until your upper torso is almost parallel to the floor, all while keeping your back naturally arched. Pull the bar toward your upper abs and squeeze your shoulders, holding at the top. Slowly return to the starting position and repeat")


#lat
Exercise.create(name: "Pullup", muscle_id: lat.id, exercise_set: 3, set_reps: 20, demonstration: "Hang from a pull-up bar with an overhand (pull-up) or underhand (chin-up) grip, hands about shoulder-width apart. Keeping your core tight, bend at the elbows and shoulders and pull your chest to the bar. Pause, then lower with control.")
Exercise.create(name: "Lat Pulldown", muscle_id: lat.id, exercise_set: 5, set_reps: 12, demonstration: "Sit in a lat pulldown station and grab the bar above with a grip slightly wider than shoulder-width. Tighten your core and keep your torso upright. Pull the bar down toward your chest, bending at your elbows and squeezing your shoulder blades. Slowly return the bar to the top of the station.")
Exercise.create(name: "Landmine Row", muscle_id: lat.id, exercise_set: 3, set_reps: 15, demonstration: "Set a barbell in a landmine and place some weight on the opposite end of the barbell. Wrap a V-bar handle around the weighted end and grasp its handles. Hinge forward so your torso is at a 45-degree angle with the ground; this is the start. Squeeze your shoulder blades and row the weighted end of the barbell toward your chest; pause, then return to the start.")

#pec major
Exercise.create(name: "Flat Bench Dumbbell Fly", muscle_id: pec_major.id, exercise_set: 3, set_reps: 15, demonstration: "This movement is performed on a flat bench. When you are in position, place your feet flat on the ground for balance and to avoid injury to lower back. Grasp a dumbbell in each hand. Start with the dumbbells together directly above your chest. Your elbows should be slightly bent, and your palms facing each other. Carefully - simultaneously, lower the weights down to either sides of your body. You will feel a stretch in the outer pectorals. Keep your palms facing inward and maintain a slight bend in the elbows. Once the dumbbells are parallel with the bench, pause. Hold and contract for 1-2 seconds, then raise your arms back to the top following the same arc.")
Exercise.create(name: "Seated Machine Fly", muscle_id: pec_major.id, exercise_set: 4, set_reps: 10, demonstration: "This movement is performed on a seated fly machine or pec dec. Sit on the seat provided. Be sure that your feet a flat on the ground, adjust the seat if necessary. Grasp the handles of the machine. Be sure that your hands are level with your shoulders. Keeping your elbows slightly bent, bring your hands together. Hold for 1-2 seconds, contract your pectorals. Then slowly release back to the starting position.")
Exercise.create(name: "Smith Machine Inclined Press", muscle_id: pec_major.id, exercise_set: 3, set_reps: 10, demonstration: "This movement is performed on a slightly inclined machine bench, roughly 30 degrees. Lay down on the bench, placing your feet flat on the ground. This is performed on a smith machine. Be sure to keep your back flat against the bench. Grasp the bar or handles on the machine with a wide grip, palms facing forward and your elbows straight down. Press the bar or machine up in the groove provided. Hold and contract for 1-2 seconds, then release back down to the starting position.")

#pec minor
Exercise.create(name: "180 Degree Twisting Dumbbell Bench Press", muscle_id: pec_minor.id, exercise_set: 3, set_reps: 10, demonstration: "Lie back on a bench holding two dumbbells with a standard grip (palms forward) and arms extended over your chest. Slowly lower the dumbbells to your outer chest, then press and rotate 180 degrees as you push back up to starting position. You should have a supine grip with your pinkies inward and palms facing your face at the top of the movement. Hold this peak contraction for 2 seconds before lowering into the next rep. Keep your shoulders back and down during the press to maximize pec involvement and minimize delt takeover.")
Exercise.create(name: "Close Grip Weighted Pushup", muscle_id: pec_minor.id, exercise_set: 3, set_reps: 10, demonstration: "Start in a push-up position with your hands about six inches apart. Add resistance by wearing a weighted vest or have a training partner place a weight or sandbag on your back. Slowly lower your chest to the ground and press back up until you fully extend your elbows.")
Exercise.create(name: "Kettlebell Fly", muscle_id: pec_minor.id, exercise_set: 4, set_reps: 12, demonstration: "Hold the kettlebells over your chest as you did in the press, but turn your palms to face each other. Using a wide arc from the shoulders, lower your arms with elbows slightly bent until you feel a good stretch across the chest. Pause and contract the pecs against the extra resistance that the kettlebells provide at the bottom range. Squeeze your pecs as you bring your arms back up in a wide hugging motion. Keep your shoulders back and squeeze your pecs together at the top of the motion.")

#upper abs
Exercise.create(name: "Bicycle Crunch", muscle_id: upper_abs.id, exercise_set: 5, set_reps: 15, demonstration: "Lie on back with hands behind head. Lift shoulder blades off mat, raise legs so knees are bent at 90 degrees, and gaze at thighs, keeping neck relaxed. This is your starting position. Engage abs and rotate right elbow toward left knee while extending right leg straight, lowering it as close to the floor as possible without resting it on mat. Return to start and repeat on the other side. ")
Exercise.create(name: "Toe Reach", muscle_id: upper_abs.id, exercise_set: 5, set_reps: 20, demonstration: "Start by lying on back with legs extended into the air to form a 90-degree angle with body. Lift arms so fingers point toward toes, then, keeping lower back pressed into mat, raise shoulders off mat as if to touch toes, then lower back down to start.")
Exercise.create(name: "Crunch", muscle_id: upper_abs.id, exercise_set: 5, set_reps: 20, demonstration: "Start on back with knees bent, feet flat on the floor, and hands behind head. Keeping lower back pressed into the mat and belly button pulled in, lift chest toward the ceiling until shoulder blades come off the mat. Lower down. ")

#lower abs
Exercise.create(name: "Lying Leg Raise", muscle_id: lower_abs.id, exercise_set: 4, set_reps: 10, demonstration: "Start this exercise by lying flat on your back with your hands underneath your glutes, palms down, and legs extended straight out in front of you. Lift your legs slowly off the floor until they’re perpendicular to the ground. Hold for a second, then bring them back down to the floor. To increase the challenge, don’t let your feet touch the ground in between reps.")
Exercise.create(name: "Scissors", muscle_id: lower_abs.id, exercise_set: 5, set_reps: 15, demonstration: "Lay on your back with both of your legs lifted so they’re perpendicular to the ground. With both your head and shoulder blades lifted off the ground, bring your right leg down until it’s about six inches from the floor as you gently pull your left leg toward your body. ")
Exercise.create(name: "Reverse Crunch", muscle_id: lower_abs.id, exercise_set: 4, set_reps: 20, demonstration: "Start by lying on your back, legs raised with knees bent at a 90-degree angle. Then, lift your lower back off the floor as you tuck your pelvis toward your belly button. Instead of relying on momentum by kicking your legs, keep it controlled so your abs do the work. Bring your body back down to the floor with the same control and repeat.")

#obl
Exercise.create(name: "Side Plank", muscle_id: obl.id, exercise_set: 3, set_reps: 15, demonstration: "Start on your side with your feet stacked on top of each other and your bottom forearm directly below your shoulder. Engage your core and raise your hips until your body is in a straight line from head to toe. Hold this exact position without letting your hips drop for 30 seconds or more, then repeat on the other side.")
Exercise.create(name: "Russian Twist", muscle_id: obl.id, exercise_set: 4, set_reps: 10, demonstration: "Sit up with your legs out in front of you, knees bent and your heels on the floor, your back at a 45-degree angle to the floor. Hold a medicine ball or dumbbell (try 8 to 10 pounds) with both hands by your stomach. Keep your back straight and medicine ball in close to your torso as you twist to the right and left.")
Exercise.create(name: "Spiderman", muscle_id: obl.id, exercise_set: 4, set_reps: 15, demonstration: "Start in a high plank, arms extended and your hands under your shoulders, with your core engaged. Bring your left knee to your left elbow. Use your upper body to turn toward your knee to perform what looks like a side crunch. Continue the movement, alternating sides.")

binding.pry
