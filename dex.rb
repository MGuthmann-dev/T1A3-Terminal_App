require "poke-api-v2"
require "./interface"

module Dex
    def self.dex
        puts Int.clear
        puts Int.ball
        puts Int.search
        puts "Enter in the Pokedex Number: "
        pokemon = gets.chomp.to_i
        if pokemon < 151
            found_poke = PokeApi.get(pokemon:"#{pokemon}")
            puts "#{found_poke.name.capitalize}"
            puts "The weight of this pokemon is #{found_poke.weight}"
        else
            puts "MissingNo. Called"
            puts Int.return
        end
    end
end     