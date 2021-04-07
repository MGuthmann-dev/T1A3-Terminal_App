#!/usr/bin/env ruby
require "./controllers/CatchController"
require "tty-prompt"

begin
    print "\e[2J\e[f"
    puts""
    puts "---------- Welcome to the PokeCLI ----------"
    puts""
    prompt = TTY::Prompt.new
    choices = {List:1, New:2, Release:3, Quit:4 }
        
    request = prompt.select("Menu:", choices, cycle: true)

    case request
        when 1
            CatchController::index
        when 2
            CatchController::create
        when 3
            CatchController::destroy
        when 4
            puts""
            puts "---------- Thank you for using the PokeCLI ---------- "
            puts""
        end
end

