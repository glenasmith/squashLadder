

class GameController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ gameInstanceList: Game.list( params ), gameInstanceTotal: Game.count() ]
    }

    def show = {
        def gameInstance = Game.get( params.id )

        if(!gameInstance) {
            flash.message = "Game not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ gameInstance : gameInstance ] }
    }

    def delete = {
        def gameInstance = Game.get( params.id )
        if(gameInstance) {
            try {
                gameInstance.delete()
                flash.message = "Game ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Game ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Game not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def gameInstance = Game.get( params.id )

        if(!gameInstance) {
            flash.message = "Game not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ gameInstance : gameInstance ]
        }
    }

    def update = {
        def gameInstance = Game.get( params.id )
        if(gameInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(gameInstance.version > version) {
                    
                    gameInstance.errors.rejectValue("version", "game.optimistic.locking.failure", "Another user has updated this Game while you were editing.")
                    render(view:'edit',model:[gameInstance:gameInstance])
                    return
                }
            }
            gameInstance.properties = params
            if(!gameInstance.hasErrors() && gameInstance.save()) {
                flash.message = "Game ${params.id} updated"
                redirect(action:show,id:gameInstance.id)
            }
            else {
                render(view:'edit',model:[gameInstance:gameInstance])
            }
        }
        else {
            flash.message = "Game not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def gameInstance = new Game()
        gameInstance.properties = params
        return ['gameInstance':gameInstance]
    }

    def save = {
        def gameInstance = new Game(params)
		def winner = Player.findById(params.winner.id)
		def loser = Player.findById(params.loser.id)
		
        if(!gameInstance.hasErrors() && gameInstance.save()) {
				winner.gamesPlayed++
				winner.gamesWon++
				loser.gamesPlayed++
            flash.message = "Game ${gameInstance.id} created"
			redirect(controller: 'player', action:list)
        }
        else {
			
            render(view:'create',model:[gameInstance:gameInstance])
        }
    }
}
