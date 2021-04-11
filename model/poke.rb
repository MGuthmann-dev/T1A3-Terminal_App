require "poke-api-v2"
require "rainbow"
require "./model/type_colour"

module Pkmn

    def self.all(dex_entry)
        poke = PokeApi.get(pokemon:"#{dex_entry}")
        txt = PokeApi.get(pokemon_species:"#{dex_entry}")
        Dex::dex(poke,txt,dex_entry)
    end

    def self.id(poke)
        dexid = poke.id
    end

    def self.name(poke)
        pk_name = poke.name.capitalize
    end
 
    def self.height(poke)
        pk_m = ((poke.height)*0.1).round(2)
        puts "\tHeight: "
        puts "\t\t#{pk_m}m"
    end 
    
    def self.weight(poke)
        pk_kg = ((poke.weight)*0.1).round(2)
        puts "\tWeight: "
        puts "\t\t#{pk_kg}kg"
    end

    def self.entry(txt)
        entry = txt.flavor_text_entries[1].flavor_text.gsub("\f"," ")
        entry = entry.gsub("\n"," ")
    end

    def self.gene(txt)
        pk_g = txt.genera[7].genus
    end

    def self.type(poke)
        pk_type1 = poke.types[0].type.name.capitalize
        cl_1 = Type_Colour.dis(pk_type1)
        
        if poke.types[1].nil?
            puts "\tType:"
            puts "\t\t#{Rainbow("  #{pk_type1}  ").bg(cl_1)}"
        else
            pk_type2 = poke.types[1].type.name.capitalize
            cl_2 = Type_Colour.dis(pk_type2)
            puts "\tType:"
            puts "\t\t#{Rainbow("  #{pk_type1}  ").bg(cl_1)}  #{Rainbow("  #{pk_type2}  ").bg(cl_2)}"
        end
    end

    def self.abil(poke)
        if poke.abilities[1].nil?
            puts "\tAbilities:"
            puts "\t\t#{poke.abilities[0].ability.name.capitalize}"
        else
            puts "\tAbilities:"
            puts "\t\t#{poke.abilities[0].ability.name.capitalize}\n\t\t#{poke.abilities[1].ability.name.capitalize}"
        end
    end

end
