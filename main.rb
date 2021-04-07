require "./controller"
require "tty-prompt"
require "./interface"

puts Int.clear
puts Int.ball
puts Int.welcome
begin
    prompt = TTY::Prompt.new
    choices = {Pokedex:1, "Catch List":2, Quit:3 }
    request = prompt.select("Menu:", choices, cycle: true)

    case request
        when 1
            Controller::dex
        when 2
            Controller::list
        when 3
            puts Int.clear
            puts Int.ball
            puts Int.exit
    end
end until request == 3
    

