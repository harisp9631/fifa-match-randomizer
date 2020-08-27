clubs = HTTParty.get("https://futdb.app/api/clubs?page=#{page_num}", headers: {accept: 'application/json', 'X-AUTH-TOKEN' => 'f950cf97-203b-43d0-a680-77d621c11f88'})
leagues = HTTParty.get("https://futdb.app/api/leagues?page=#{page_number}", headers: {accept: 'application/json', 'X-AUTH-TOKEN' => 'f950cf97-203b-43d0-a680-77d621c11f88'})

leagues_api = lambda { |page_num| clubs = HTTParty.get("https://futdb.app/api/leagues?page=#{page_num}", headers: {accept: 'application/json', 'X-AUTH-TOKEN' => 'f950cf97-203b-43d0-a680-77d621c11f88'})}
clubs_api = lambda { |page_num| clubs = HTTParty.get("https://futdb.app/api/clubs?page=#{page_num}", headers: {accept: 'application/json', 'X-AUTH-TOKEN' => 'f950cf97-203b-43d0-a680-77d621c11f88'})}
