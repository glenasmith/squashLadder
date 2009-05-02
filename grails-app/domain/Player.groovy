class Player {
	
	String name
	String email
	int gamesPlayed
	int gamesWon
	int percentage

    static constraints = {
		name(blank:false, unique: true)
		email(email:true)
		
    }

	static transients = ['percentage']
		
	String toString() {
		return name
	}
	
	int getPercentage() {
		if (gamesWon == 0) {return 0}
		else{
			return (gamesPlayed/gamesWon) *100
		}
	}
	
	
}
