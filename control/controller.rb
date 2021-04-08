require "./view/dex"
require "./view/interface"
require "./model/poke"

module Controller

    def self.name
        puts Int.ball
        puts Int.search
        puts "Enter in the Pokemon Name: "
        dex_entry = gets.chomp.strip.to_s.downcase
        Pkmn.all(dex_entry)
    end

    def self.num
        puts Int.ball
        puts Int.search
        puts "Enter in the Pokedex Number: "
        dex_entry = gets.chomp.strip.to_i
        Pkmn.all(dex_entry)
    end
end
