require "./view/dex"
require "./view/interface"
require "./model/poke"

module Controller

    def self.name(dex_entry)
        Pkmn.all(dex_entry)
    end

    def self.num(dex_entry)
        Pkmn.all(dex_entry)
    end
end
