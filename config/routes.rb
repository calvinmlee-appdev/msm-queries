Rails.application.routes.draw do
  
  # Home
  get("/", { :controller => "application", :action => "homepage" })

  # Directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  # Movies  
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })

  # Actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_id", { :controller => "actors", :action => "actor_details" })

end
