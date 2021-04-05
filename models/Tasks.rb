require 'yaml'
require_relative './ActiveRecord'
require './lib/Logger'

class Tasks < ActiveRecord
    include Logger

    attr_reader :name, :description, :priority

    @inst_num = 0

    def self.inst_num
        @inst_num
    end

    def self.inst_num=(value)
        @inst_num = value
    end

    def initialize(name, priority = nil, description)
        @name = name
        @description = description
        @priority = priority
        log "Created a Task"
        log "Total Tasks: #{self.class.inst_num += 1}"
    end

    def to_s
        [ 
            "Name: #{@name}",
            "Priority: #{@priority}",
            "Description: #{@description}"
        ].join(' ')
    end
end