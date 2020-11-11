require_relative '../config/environment'
require 'tty-prompt'

Exercise.all.each do |exercise|
    puts exercise
end

cli = CLI.new

cli.welcome 

sleep(1) 

CLI.main_menu

sleep(1) 

CLI.workout_menu

sleep(1) 

CLI.navigate_muscle_group