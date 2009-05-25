

class PlayerController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = { params.max = Math.min( params.max ? params.max.toInteger() : 10, 100)
		def totals = [:]
		def title
		def players = Player.list()
		
	  	if(params.sort==null){
			params.sort = 'percentage'
			params.order = 'desc'
		}
	
		if(params.sort=="percentage"){
			title = "Games Won"
	  		players.sort {player ->
	  				player.getPercentage()
	  			}
	  			if(params.order=="desc"){
	  				players = players.reverse()
	  			}
	
				players.each { player->
					if(player.gamesWon>0){
						totals[player.name] = player.gamesWon
					}
					
				}
		}
	  else{
			title = "Games Played"
			players.each { player->
				if(player.gamesPlayed>0){
					totals[player.name] = player.gamesPlayed	
				}
			}
	 }
		return [ playerInstanceList: players, playerInstanceTotal: Player.count(), totals: totals, title: title  ]
	}

	
    def show = {
        def playerInstance = Player.get( params.id )
		def allGames = [dean:1, emily:2, kate:4]
        if(!playerInstance) {
            flash.message = "Player not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ playerInstance : playerInstance ] }
    }

    def delete = {
        def playerInstance = Player.get( params.id )
        if(playerInstance) {
            try {
                playerInstance.delete()
                flash.message = "Player ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Player ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Player not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def playerInstance = Player.get( params.id )

        if(!playerInstance) {
            flash.message = "Player not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ playerInstance : playerInstance ]
        }
    }

    def update = {
        def playerInstance = Player.get( params.id )
        if(playerInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(playerInstance.version > version) {
                    
                    playerInstance.errors.rejectValue("version", "player.optimistic.locking.failure", "Another user has updated this Player while you were editing.")
                    render(view:'edit',model:[playerInstance:playerInstance])
                    return
                }
            }
            playerInstance.properties = params
            if(!playerInstance.hasErrors() && playerInstance.save()) {
                flash.message = "Player ${params.id} updated"
                redirect(action:show,id:playerInstance.id)
            }
            else {
                render(view:'edit',model:[playerInstance:playerInstance])
            }
        }
        else {
            flash.message = "Player not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def playerInstance = new Player()
        playerInstance.properties = params
        return ['playerInstance':playerInstance]
    }

    def save = {
        def playerInstance = new Player(params)
        if(!playerInstance.hasErrors() && playerInstance.save()) {
            flash.message = "Player ${playerInstance.id} created"
            redirect(action:show,id:playerInstance.id)
        }
        else {
            render(view:'create',model:[playerInstance:playerInstance])
        }
    }

	def stats = {
		Player player = Player.findById('1')
		if (player) {
	//		if(gamesPlayed > 0){
				def allGames = [dean:1, emily:2, kate:4]
		//		def listOfGames = Games.findAll('where winner = $player')
				return [allGames:allGames]
	  // 	}else{
	  // 		flash.message = "No games played by this player"
	  // 		redirect(uri: "/")
	  // 		}
		}
	}
	

}

