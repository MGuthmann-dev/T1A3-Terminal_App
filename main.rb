require "tty-prompt"
require "./view/dex"
require "./view/interface"

puts Int.clear
puts Int.ball
puts Int.welcome
begin
    prompt = TTY::Prompt.new
    choices = {"Search by Name":1, "Search by Dex Number":2, Quit:3 }
    request = prompt.select("Menu:", choices, cycle: true)

    case request
        when 1
            Dex::dex
        when 2
            Dex::dex
        when 3
            puts Int.clear
            puts Int.ball
            puts Int.exit
    end
end until request == 3
    

