module Views
    module Pkmn
        def self.create
            print "Name: "
            name = gets.chomp.strip
            print "Priority: "
            priority = gets.chomp.strip.to_i
            print "Description: "
            description = gets.chomp.to_s
            [ name, priority, description ]
        end
    end
end
