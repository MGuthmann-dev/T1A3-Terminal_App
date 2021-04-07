# require_relative "../models/Pkmn"
# require_relative "../views/index"
# require_relative "../views/create"
# require_relative "../views/show"
require "./dex"
require "./interface"

module Controller
    def self.dex
        Dex::dex
    end

    def self.list
        puts Int.clear
        puts Int.ball
        catch_pick = TTY::Prompt.new
        pick = {New:1, List:2, Release:3, Return:4 }
        catch_request = catch_pick.select("Menu:", pick, cycle: true)
    
        case catch_request
            when 1
                CatchController::new
            when 2
                CatchController::list
            when 3
                CatchController::release
            when 4
                puts Int.clear
                puts Int.ball
                puts Int.exit
            end
    end
end

module CatchController
    def self.new
        puts "test new"
    end

    def self.list
        puts "test list"
    end

    def self.release
        puts "test release"
    end
end

#############   OLD CODE    #############

# def self.create
#     name, priority, description = Views::Pkmn.create
#     task = Pkmn.new name, priority, description
#     task.save
# end

# def self.destroy(id)
#     if task = Pkmn.find(id)
#         task.delete 
#     end
# end
