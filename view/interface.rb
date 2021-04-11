require "tty-font"
require "tty-box"

class Int

    def self.welcome
        box_welcome = TTY::Box.frame(width: 100, height: 7, padding: 1, align: :center) do
            "Welcome to the PokéTerminal\n\nYou can search for any of the 151 Pokemon of Kanto below."
          end
          print box_welcome
    end
    
    def self.exit
        box_exit = TTY::Box.frame(width: 100, height: 5, padding: 1, align: :center) do
           "Goodbye"
         end
         print box_exit
     end
    
    def self.search
        box_search = TTY::Box.frame(width: 100, height: 5, padding: 1, align: :center) do
            "Please type in below which pokemon you wish to see."
          end
          print box_search
    end

    def self.line
        puts "-----------------------------------------------------------------------------------------------------"
    end

    def self.clear
        print "\e[2J\e[f"
    end

    def self.ball
        print "\e[2J\e[f"
        banner = TTY::Font.new(:standard)
        ban_font = banner.write("Poke Terminal")

        box_banner = TTY::Box.frame(width: 100, align: :center, border: :thick, title: {bottom_right: " The Kanto CLI Pokedex "}) do
           ban_font
        end 

        print box_banner

    end
    
    def self.miss
        print "\e[2J\e[f"
        box_miss1 = TTY::Box.frame(width: 100, height: 5, padding: 1, align: :center) do
            "Ｗｉｌｄ ＭＩＳＳＩＮＧＮＯ．ａｐｐｅａｒｅｄ！"
          end
          print box_miss1
        puts "                            
                            
                                                        ▞▚▟▛▚
                                                        ▞▗▝▗▜
                                                        ▙▖▞▝▜
                                                        ▝▖▝▗▘
                                                        ▞▚▗▚▖
                                                        ▜▞▛▘▝
                                                    ▙▙▗▟▖▘▞▖▜▞
                                                    ▞▙▟▛▙█▞▝▙▛
                                                    ▝▟▞█▘▞█▖▙▝
                                                    ▛▖▞▜▙▞▚▜▙█
                                                    ▗▜▝▛▘▝▟▘▞▙
                                                    ▗▜▝▘▘▝▗▚▟▞
                                                    ▜▘▞▚▚▞▜█▛▚
                                                    ▝▚▝▝▝▙▜▟▘▞
                                                    ▞▛▝▞▘▘▙▚▛█"
        box_miss2 = TTY::Box.frame(width: 100, height: 5, padding: 1, align: :center) do
            " Looks like you've run into an error, returning you to the main menu"
          end
          print box_miss2
    end

    def self.meme
        puts "
                                ⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣠⣤⣶⣶
                                ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢰⣿⣿⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⣀⣾⣿⣿⣿⣿
                                ⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿
                                ⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿
                                ⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿
                                ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿"
    end

end









