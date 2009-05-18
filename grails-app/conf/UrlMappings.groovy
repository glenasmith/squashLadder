class UrlMappings {
    static mappings = {
      "/$controller/$action?/$id?"{
	      constraints {
			 // apply constraints here
		  }
	  }
	"/player/$id/stats" {
		controller = "player"
		action = "stats"
	}

      "/"(view:"/index")
	  "500"(view:'/error')
	}
}
