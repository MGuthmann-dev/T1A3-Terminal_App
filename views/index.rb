require "tty-table"

module Views
    module Tasks
        def self.index(tasks)
            return puts("-- No Tasks")  unless tasks.length > 0

            table = TTY::Table.new(
                ["id", "name", "priority" "description"],
                rows_for(tasks)
            )
            puts table.render(:ascii)
        end

        def self.rows_for(tasks)
            tasks.map do |task|
                [ task.id, task.name, task.priority, description ]
            end
        end
    end
end