class Game {
	
	Date datePlayed
 	Player winner
	Player loser 

    static constraints = {
		datePlayed(blank:false)
		winner(blank:false)
		loser(blank:false)
    }
}
