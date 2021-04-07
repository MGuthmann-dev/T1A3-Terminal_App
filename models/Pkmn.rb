require 'yaml'
require_relative './ActiveRecord'
require './lib/Logger'
require 'poke-api-v2'

class Pkmn < ActiveRecord
    include Logger

    attr_reader :name, :description, :dex

    @inst_num = 0

    def self.inst_num
        @inst_num
    end

    def self.inst_num=(value)
        @inst_num = value
    end

    def initialize(name, dex = nil, description)
        @name = name
        @description = description
        @dex = dex
        log "Logged a new caught pkmn"
        log "Total Caught: #{self.class.inst_num += 1}"
    end

    def to_s
        [ 
            "Dex#: #{@dex}",
            "Name: #{@name}",
            "Description: #{@description}"
        ].join(' ')
    end
end