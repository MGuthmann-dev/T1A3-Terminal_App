# require "./controllers/RecipesController"

module Routes
    def self.dispatch(request)
        case request
        when /^n(ame)*/
            RecipesController::index
        when /^d(ex)*/
            RecipesController::show
    end
end