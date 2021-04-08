require "poke-api-v2"

module Pkmn

    def self.all(dex_entry)
        poke = PokeApi.get(pokemon:"#{dex_entry}")
        txt = PokeApi.get(pokemon_species:"#{dex_entry}")
        Dex::dex(poke,txt,dex_entry)
    end



end


##############################################################################################################################################
#IDK IF I NEED?
##############################################################################################################################################
    # include Dex

    # def self.name(poke)
    #     puts "#{poke.name.capitalize}"
    #  end
 
    #  def self.height
    #      puts "#{((poke.height)*0.1).round(2)}"
    #  end 
     
    #  def self.weight
    #      puts "#{((poke.weight)*0.1).round(2)}"
    #  end
 
    #  # def self.flavor_text
    #  #     PokeApi.get(pokemon_species:"#{pokemon}").flavor_text_entries[0].flavor_text
    #  # end
 
    #  def self.type_call
    #      if found_poke.type[1].nil?
    #          puts "\tTypes:\n \t\t#{found_poke.types[0].type.name.capitalize}"
    #      else
    #          puts "\tTypes:\n \t\t#{found_poke.types[0].type.name.capitalize}\n \t\t#{found_poke.types[1].type.name.capitalize}"
    #      end
    #  end
 