require "poke-api-v2"
require "./view/interface"
require "./model/poke"

module Dex

    def self.dex

        puts Int.clear
        puts Int.ball
        puts Int.search
    
        puts "Enter in the Pokedex Number: "
        dex_entry = gets.chomp.strip.to_i

        poke = PokeApi.get(pokemon:"#{dex_entry}")
        txt = PokeApi.get(pokemon_species:"#{dex_entry}")
    
       if (1..151) === dex_entry
            puts "---------------------------------------------------------"
            puts "\t\t#{poke.name.capitalize}"
            puts "---------------------------------------------------------"
            puts "\n\tHeight: #{((poke.height)*0.1).round(2)}m"
            puts "\tWeight: #{((poke.weight)*0.1).round(2)}kg\n"
            # print_abilities
            puts ""
            puts "\n#{txt.flavor_text_entries[1].flavor_text.gsub("\f","\n")}"
            # base_stats
            puts "---------------------------------------------------------"
            puts "---------------------------------------------------------"
            puts "---------------------------------------------------------"
       else
            puts "MissingNo. Called" 
            puts Int.return
       end
    end
end     
