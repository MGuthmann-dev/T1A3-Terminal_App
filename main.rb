#!/usr/bin/env ruby
require "./controllers/CatchController"
require "tty-prompt"

begin
    puts""
    puts "---------- Welcome to the PokeCLI ----------"
    puts""
    prompt = TTY::Prompt.new
    menu_choices = [
        {name: 'List', value: 1},
        {name: 'New', value: 2},
        {name: 'Release', value: 3},
        {name: 'Quit', value: 4}
        ]
        
    request, param = prompt.select("Menu:", menu_choices)

    case request
        when 1
            CatchController::index
        when 2
            CatchController::create
        when 3
            CatchController::destroy(param)
        when 4
            puts "---------- Thank you for using the PokeCLI ---------- "
        end
end

