require_relative '../config/environment'
require 'tty-prompt'

cli = CLI.new

cli.welcome 

sleep(1) 

CLI.main_menu


CLI.navigate_muscle_group
