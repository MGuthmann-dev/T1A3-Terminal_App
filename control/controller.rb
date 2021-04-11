require "./view/dex"
require "./view/interface"
require "./model/poke"

module Controller

    def self.dis(request)
        case request
        when 1
            puts Int.ball
            puts Int.search
            puts "Enter in the Pokemon Name: "
            dex_entry = gets.chomp.strip.to_s.downcase
            Pkmn.all(dex_entry)
        when 2
            puts Int.ball
            puts Int.search
            puts "Enter in the Pokedex Number: "
            dex_entry = gets.chomp.strip.to_i
            if (1..151) === dex_entry
                Pkmn.all(dex_entry)
            else
                Int.clear
                Int.miss
            end
        when 3
            puts Int.ball
            puts Int.meme
            puts Int.exit
        end
    end

end

