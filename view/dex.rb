require "poke-api-v2"
require "./view/interface"
# require "./model/poke"
require "./control/controller"

module Dex

    def self.dex(poke, txt, dex_entry)

        Int.clear
        puts "---------------------------------------------------------"
        Pkmn.name(poke)
        puts "---------------------------------------------------------"
        Pkmn.type_call(poke)
        Pkmn.height(poke)
        Pkmn.weight(poke)
        # print_abilities
        puts ""
        Pkmn.entry(txt)
        # base_stats
        Int.line

    end

end     
