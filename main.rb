#!/usr/bin/env ruby

require "tty-prompt"
require "./view/dex"
require "./view/interface"

puts Int.ball
puts Int.welcome

begin
    prompt = TTY::Prompt.new
    choices = {"Search by Name":1, "Search by Dex Number":2, Quit:3 }
    request = prompt.select("Menu:", choices, cycle: true)
    Controller.dis(request)

rescue
    Int.clear
    Int.miss

end until request == 3
    

