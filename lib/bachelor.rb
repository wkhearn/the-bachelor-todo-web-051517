require 'pry'
data = {
   "season 18":[
      {
         "name":"Nikki Ferrell",
         "age":"26",
         "hometown":"Kearney, Missouri",
         "occupation":"Pediatric Nurse",
         "status":"Winner"
      },
      {
         "name":"Clare Crawley",
         "age":"32",
         "hometown":"Sacramento, California",
         "occupation":"Hairstylist",
         "status":"Runner-up"
      },
      {
         "name":"Andi Dorfman",
         "age":"26",
         "hometown":"Atlanta, Georgia",
         "occupation":"Assistant District Attorney",
         "status":"Quit in episode 9"
      },
      {
         "name":"Renee Oteri",
         "age":"32",
         "hometown":"Martha's Vineyard, Massachusetts[Note 1]",
         "occupation":"Real Estate Agent",
         "status":"Eliminated in episode 8"
      },
      {
         "name":"Chelsie Webster",
         "age":"24",
         "hometown":"Lexington, Ohio",
         "occupation":"Science Educator",
         "status":"Eliminated in episode 7"
      },
      {
         "name":"Sharleen Joynt",
         "age":"29",
         "hometown":"Ottawa, Ontario",
         "occupation":"Opera Singer",
         "status":"Withdrew in episode 7"
      },
      {
         "name":"Kat Hurd",
         "age":"29",
         "hometown":"Iowa City, Iowa",
         "occupation":"Medical Sales Representative/NBA Dancer",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Cassandra Ferguson",
         "age":"22",
         "hometown":"Shelby Charter Township, Michigan",
         "occupation":"Former NBA Dancer",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Alli Restko",
         "age":"26",
         "hometown":"Orland Park, Illinois",
         "occupation":"Nanny",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Danielle Ronco",
         "age":"25",
         "hometown":"Litchfield, Illinois",
         "occupation":"Psychiatric Nurse",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Kelly Travis",
         "age":"27",
         "hometown":"Conyers, Georgia",
         "occupation":"Dog Lover",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Elise Mosca",
         "age":"27",
         "hometown":"Forty Fort, Pennsylvania",
         "occupation":"First Grade Teacher",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Lauren Solomon",
         "age":"26",
         "hometown":"Austin, Texas",
         "occupation":"Music Composer",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Christy Hansen",
         "age":"24",
         "hometown":"Aurora, Illinois",
         "occupation":"Marketing Manager",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Lucy Aragon",
         "age":"25",
         "hometown":"Santa Barbara, California",
         "occupation":"Free Spirit",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Amy Long",
         "age":"27",
         "hometown":"Clermont, Florida",
         "occupation":"Local News Reporter",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Chantel Forrest",
         "age":"27",
         "hometown":"Miami, Florida",
         "occupation":"Account Manager",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Victoria Lima",
         "age":"24",
         "hometown":"Porto Alegre, Brazil",
         "occupation":"Legal Assistant",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Alexis Morgado",
         "age":"24",
         "hometown":"Tampa, Florida",
         "occupation":"Communications Director/NHL Ice Girl",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Amy Jokinen",
         "age":"31",
         "hometown":"Apopka, Florida",
         "occupation":"Massage Therapist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Ashley Poe",
         "age":"25",
         "hometown":"Roanoke, Texas",
         "occupation":"Grade School Teacher",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Christine Llano",
         "age":"23",
         "hometown":"Miami, Florida",
         "occupation":"Police Support Specialist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Kylie Lewis",
         "age":"23",
         "hometown":"Rockford, Illinois",
         "occupation":"Interior Designer",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lacy Faddoul",
         "age":"25",
         "hometown":"Antelope Acres, California",
         "occupation":"Nursing Home Owner",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lauren Higginson",
         "age":"25",
         "hometown":"Edmond, Oklahoma",
         "occupation":"Mineral Coordinator",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Maggie Gantt",
         "age":"25",
         "hometown":"Wagener, South Carolina",
         "occupation":"Personal Banker",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Valerie Eredia",
         "age":"26",
         "hometown":"Sutter, California",
         "occupation":"Personal Trainer",
         "status":"Eliminated in episode 1"
      }
   ],}



def get_first_name_of_season_winner(data, season)
  #shoe_sizes = []
  #rebound_array = []
  season_winner = []
  data.each do |seasons, information|
    if seasons.to_s.downcase == season.downcase
      information.each_with_index do |person,i|
        person.each do |category, value|
          if value == "Winner"
            season_winner = data[seasons][i]["name"].split[0]
          end
        end
      end
    end
  end
  season_winner
end

#get_first_name_of_season_winner(data, "Season 18")

def get_contestant_name(data, occupation)
  worker = []
  data.each do |seasons, information|
      information.each_with_index do |person,i|
        person.each do |category, value|
          if value == occupation
            worker = data[seasons][i]["name"]
          end
        end
      end
  end
  worker
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  homers = []
  data.each do |seasons, information|
      information.each_with_index do |person,i|
        person.each do |category, value|
          if value == hometown
            homers = data[seasons][i]["name"]
            counter += 1
          end
        end
      end
  end
  counter
end

def get_occupation(data, hometown)
  counter = 0
  homers = []
  data.each do |seasons, information|
      information.each_with_index do |person,i|
        person.each do |category, value|
          if value == hometown
            homers << data[seasons][i]["occupation"]
            counter += 1
          end
        end
      end
  end
  homers[0]
end

def get_average_age_for_season(data, season)
  counter = 0
  homers = []
  data.each do |seasons, information|
    if seasons.upcase == season.upcase
      information.each_with_index do |person,i|
        person.each do |category, value|
          #if category == "age"
            homers << data[seasons][i]["age"].to_f
            #counter += 1
          #end
        end
      end
    end
  end
  (homers.reduce(:+).to_f / homers.size).round
end
