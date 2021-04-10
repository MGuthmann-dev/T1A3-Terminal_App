require "tty-box"
require "tty-font"
require "./view/interface"
require "./control/controller"

module Dex

    def self.dex(poke, txt, dex_entry)

        font = TTY::Font.new(:standard)
        pk_font = font.write("#{Pkmn.name(poke)}")
        box = TTY::Box.frame(width: 57, height: 5, align: :center) do
            "#{Pkmn.entry(txt)}"
        end 

        Int.clear
        puts "---------------------------------------------------------"
        puts pk_font
        puts "---------------------------------------------------------"
        Pkmn.gene(txt)
        Pkmn.type(poke)
        Pkmn.height(poke)
        Pkmn.weight(poke)
        print box
        Int.line
    end

end     

