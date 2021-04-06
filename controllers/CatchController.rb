require_relative "../models/Pkmn    "
require_relative "../views/index"
require_relative "../views/create"
require_relative "../views/show"

module CatchController
    def self.index
        task = Pkmn::all
        Views::Pkmn.index(task)
    end

    def self.show(id)
        task = Pkmn.find(id)
        Views::Pkmn.show(task)
    end

    def self.create
        name, priority, description = Views::Pkmn.create
        task = Pkmn.new name, priority, description
        task.save
    end

    def self.destroy(id)
        if task = Pkmn.find(id)
            task.delete 
        end
    end
end