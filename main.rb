require "tty-prompt"
require "./view/dex"
require "./view/interface"

puts Int.ball
puts Int.welcome

begin
    prompt = TTY::Prompt.new
    choices = {"Search by Name":1, "Search by Dex Number":2, Quit:3 }
    request = prompt.select("Menu:", choices, cycle: true)

    case request
        when 1
            puts Int.ball
            puts Int.search
            puts "Enter in the Pokemon Name: "
            dex_entry = gets.chomp.strip.to_s.downcase
            Controller.name(dex_entry)
            # if dex_entry == true
            # else
            #     puts Int.ball
            #     puts Int.return
            #     puts "MissingNo. Called" 
            # end
        when 2
            puts Int.ball
            puts Int.search
            puts "Enter in the Pokedex Number: "
            dex_entry = gets.chomp.strip.to_i
            if (1..151) === dex_entry
                Controller.name(dex_entry)
            else
                Int.clear
                Int.miss
            end
        when 3
            puts Int.ball
            puts Int.meme
            puts Int.exit
    end

end until request == 3
    

