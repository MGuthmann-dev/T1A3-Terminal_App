#!/usr/bin/env ruby

require "./routes"
require 'poke-api-v2'

begin
    p "Welcome to the Poke-Terminal"
    p "Please choose how you wish to search (Name, Dex Number or Quit)"
    request = gets.chomp.downcase.strip.split (' ')
    Routes.dispatch(request, param)

rescue => exception
    
end until  [ 'quit', 'q'].include? request