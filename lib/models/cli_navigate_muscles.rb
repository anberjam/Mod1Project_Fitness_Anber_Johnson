require 'tty-prompt'

class Cli_Navigate_Muscles



def self.navigate_muscle_group
    prompt = TTY::Prompt.new

muscle_group = prompt.select ("Which body part would you like to work out?") do |body_part|
    body_part.choice "Legs"
    body_part.choice "Arms"
    body_part.choice "Chest"
    body_part.choice "Shoulders"
    body_part.choice "Back"
    body_part.choice "Abs"
    body_part.choice "I would like to return to the main menu"
    end

    if muscle_group == "Legs"
    elsif muscle_group == "Arms"
    elsif muscle_group == "Chest"
    elsif muscle_group == "Shoulders"
    elsif muscle_group == "Back"
    elsif muscle_group == "Abs"
    elsif muscle_group == "I would like to return to the main menu"
    end
end

def self.specific_muscle(muscle_group)
    muscle = prompt.select ("Which muscle would you like to focus on?")
end
    
