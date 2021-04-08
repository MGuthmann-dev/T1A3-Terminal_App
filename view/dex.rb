require "poke-api-v2"
require "./view/interface"
require "./model/poke"
require "./control/controller"

module Dex

    def self.dex(poke, txt, dex_entry)

        # Int.clear
        # Int.ball
        # Int.search
    
        # puts "Enter in the Pokedex Number: "
        # dex_entry = gets.chomp.strip.to_i

        # poke = PokeApi.get(pokemon:"#{dex_entry}")
        # txt = PokeApi.get(pokemon_species:"#{dex_entry}")
    
       if (1..151) === dex_entry
            Int.clear
            puts "---------------------------------------------------------"
            puts "\t\t#{poke.name.capitalize}"
            puts "---------------------------------------------------------"
            puts "\n\tHeight: #{((poke.height)*0.1).round(2)}m"
            puts "\tWeight: #{((poke.weight)*0.1).round(2)}kg\n"
            # print_abilities
            puts ""
            puts "\n#{txt.flavor_text_entries[1].flavor_text.gsub("\f","\n")}"
            # base_stats
            Int.line
        else
            puts Int.ball
            puts Int.return
            puts "MissingNo. Called" 
       end
    end
end     
