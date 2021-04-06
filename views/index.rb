require "tty-table"

module Views
    module Pkmn
        def self.index(tasks)
            return puts("-- No 'Mons")  unless tasks.length > 0

            table = TTY::Table.new(
                ["id", "name", "priority", "description"],
                rows_for(tasks)
            )
            puts table.render(:ascii)
        end

        def self.rows_for(tasks)
            tasks.map do |task|
                [ task.id, task.name, task.priority, task.description ]
            end
        end
    end
end