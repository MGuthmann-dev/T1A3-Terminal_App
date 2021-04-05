require_relative "../models/Tasks"
require_relative "../views/index"
require_relative "../views/create"
require_relative "../views/show"

module TaskController
    def self.index
        task = Tasks::all
        Views::Tasks.index(task)
    end

    def self.show(id)
        task = Tasks.find(id)
        Views::Tasks.show(task)
    end

    def self.create
        name, priority, description = Views::Tasks.create
        task = Tasks.new name, priority, description
        task.save
    end

    def self.destroy(id)
        if task = Tasks.find(id)
            task.delete
        end
    end
end