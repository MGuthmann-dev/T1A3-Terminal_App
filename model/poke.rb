require "poke-api-v2"

module Pkmn

    def self.all(dex_entry)
        poke = PokeApi.get(pokemon:"#{dex_entry}")
        txt = PokeApi.get(pokemon_species:"#{dex_entry}")
        Dex::dex(poke,txt,dex_entry)
    end

    def self.id(poke)
        dexid = poke.id
        puts "#{dexid}"
    end

    def self.name(poke)
        pk_name = poke.name.capitalize
        puts "\t\t#{pk_name}"
    end
 
    def self.height(poke)
        pk_m = ((poke.height)*0.1).round(2)
        puts "\n\t Height: #{pk_m}m"
    end 
    
    def self.weight(poke)
        pk_kg = ((poke.weight)*0.1).round(2)
        puts "\t Weight: #{pk_kg}kg\n"
    end

    def self.entry(txt)
        entry = txt.flavor_text_entries[1].flavor_text.gsub("\f","\n")
        puts "\n#{entry}"
    end

    def self.type(poke)
        if poke.types[1].nil?
            puts "\tTypes:\n \t\t#{poke.types[0].type.name.capitalize}"
        else
            puts "\tTypes:\n \t\t#{poke.types[0].type.name.capitalize}\n \t\t#{poke.types[1].type.name.capitalize}"
        end
    end


end
