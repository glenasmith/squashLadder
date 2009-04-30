class Game {
	
	Date datePlayed
 	Player winner
	Player loser 

    static constraints = {
		datePlayed(blank:false)
		winner(blank:false, 
		   validator: { winner, game ->  
		               return winner != game.loser
		   			}
				)
		loser(blank:false, 
		   validator: { loser, game ->  
		               return loser != game.winner
		   			}
			  )
		
    }
}
