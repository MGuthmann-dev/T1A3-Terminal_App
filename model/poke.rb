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
    end
 
    def self.height(poke)
        pk_m = ((poke.height)*0.1).round(2)
        puts "#{pk_m}m"
    end 
    
    def self.weight(poke)
        pk_kg = ((poke.weight)*0.1).round(2)
        puts "#{pk_kg}kg"
    end

    def self.entry(txt)
        entry = txt.flavor_text_entries[1].flavor_text.gsub("\f","")
        entry = entry.gsub("\n"," ")
    end

    def self.gene(txt)
        pk_g = txt.genera[7].genus
        puts "#{pk_g}"
    end

    def self.type(poke)
        if poke.types[1].nil?
            puts "#{poke.types[0].type.name.capitalize}"
        else
            puts "#{poke.types[0].type.name.capitalize}\n#{poke.types[1].type.name.capitalize}"
        end
    end


end
