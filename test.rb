require "poke-api-v2"

found_poke = PokeApi.get(pokemon:3)
flav_text = PokeApi.get(pokemon_species:"#{pokemon}")

# found_poke.types[0].type.name
# found_poke.types[0].slot

# puts "#{flav_text.flavor_text_entries[0]}"

# flav_text.flavor_text_entries[0].flavor_text

if found_poke.type[1].nil?

    
end