class Player {
	
	String name
	String email
	int gamesPlayed
	int gamesWon

    static constraints = {
		name(blank:false)
		email(email:true)
		
    }
}
