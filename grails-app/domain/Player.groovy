class Player {
	
	String name
	String email
	int gamesPlayed
	int gamesWon

    static constraints = {
		name(blank:false, unique: true)
		email(email:true)
		
    }

	String toString() {
		return name
	}
}
