require "tty-box"
require "tty-font"
require "./view/interface"
require "./control/controller"

module Dex

    def self.dex(poke, txt, dex_entry)

        font = TTY::Font.new(:standard)
        pk_font = font.write("#{Pkmn.name(poke)}")

        box_name = TTY::Box.frame(width: 100, align: :center, border: :thick, title: {bottom_left: "  # #{Pkmn.id(poke)}  ", bottom_right: "  #{Pkmn.gene(txt)}  "}) do
            pk_font
        end 
        box_entry = TTY::Box.frame(width: 100, height: 4, align: :center) do
            "#{Pkmn.entry(txt)}"
        end 

        Int.clear
        puts box_name
        puts ""
        print box_entry
        puts ""
        Pkmn.type(poke)
        puts ""
        Pkmn.height(poke)
        Pkmn.weight(poke)
        puts ""
        Pkmn.abil(poke)
        puts ""
        puts ""
        Int.line    
        
    end

end     

