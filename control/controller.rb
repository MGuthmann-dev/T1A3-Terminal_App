require "./view/dex"
require "./view/interface"

module Controller

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
