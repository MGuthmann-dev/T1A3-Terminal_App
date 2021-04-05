require "./controllers/TaskController"

module Routes
    def self.dispatch(request, param)
        case request
        when /^l(ist)*/
            TaskController::index
        when /^s(how)*/
            TaskController::show(param)
        when /^n(ew)*/
            TaskController::create
        when /^d(elete)*/
            TaskController::destroy(param)
        end
    end
end