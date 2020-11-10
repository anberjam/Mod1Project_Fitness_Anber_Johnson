require_relative '../config/environment'

Muscle.all.each do |muscle|
    puts muscle[:subgroup]
end


#cli = CLI.new

#cli.welcome 
