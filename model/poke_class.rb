require "poke-api-v2"

class Pokemon
    attr_reader :id, :name, :type, :height, :weight, :entry

    def initialize
        @id = id
        @name = name
        @type = type
        @height = height
        @weight = weight
        @entry = entry
    end

    def self.poke
        poke = PokeApi.get(pokemon:"#{@id}")
    end

    def self.name(poke)
        pk_name = poke.name.capitalize
    end
 
    def self.height(poke)
        puts "#{((poke.height)*0.1).round(2)}"
    end 
    
    def self.weight(poke)
        puts "#{((poke.weight)*0.1).round(2)}"
    end

    # def self.flavor_text(poke)
    #     PokeApi.get(pokemon_species:"#{pokemon}").flavor_text_entries[0].flavor_text
    # end

    # def self.type_call
    #     if found_poke.type[1].nil?
    #         puts "\tTypes:\n \t\t#{found_poke.types[0].type.name.capitalize}"
    #     else
    #         puts "\tTypes:\n \t\t#{found_poke.types[0].type.name.capitalize}\n \t\t#{found_poke.types[1].type.name.capitalize}"
    #     end
    # end

end