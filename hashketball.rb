require "pry"

def game_hash
{:home => {
:team_name => "Brooklyn Nets",
:colors => ["Black", "White"],
:players => {

    "Alan Anderson" => {
    :number => 0,
    :shoe => 16,
    :points => 22,
    :rebounds => 12,
    :assists => 12,
    :steals => 3,
    :blocks => 1,
    :slam_dunks => 1
  },
    "Reggie Evans" => {
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
    },
    "Brook Lopez" => {
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
    },
    "Mason Plumlee" => {
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
    },
    "Jason Terry" => {
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
    }
  }
},

:away => {
  :team_name => "Charlotte Hornets",
  :colors => ["Turquoise", "Purple"],
  :players => {

 "Jeff Adrien" => {
    :number => 4,
    :shoe => 18,
    :points => 10,
    :rebounds => 1,
    :assists => 1,
    :steals => 2,
    :blocks => 7,
    :slam_dunks => 2
  },
  "Bismak Biyombo" => {
    :number => 0,
    :shoe => 16,
    :points => 12,
    :rebounds => 4,
    :assists => 7,
    :steals => 7,
    :blocks => 15,
    :slam_dunks => 10
  },
  "DeSagna Diop" => {
    :number => 2,
    :shoe => 14,
    :points => 24,
    :rebounds => 12,
    :assists => 12,
    :steals => 4,
    :blocks => 5,
    :slam_dunks => 5
  },
  "Ben Gordon" => {
    :number => 8,
    :shoe => 15,
    :points => 33,
    :rebounds => 3,
    :assists => 2,
    :steals => 1,
    :blocks => 1,
    :slam_dunks => 0
  },
    "Brendan Haywood" => {
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }
    }
  }
}
end


def num_points_scored(players_name)
  game_hash.each do |location, team|
  # access home/away and teams
    team.each do |attributs, values|
    # acess team name .color .players
      if attributs == :players
        values.each do |player, data|
        # players name and stats
        if player == players_name 
          # player stats and values
          data.each do |stat, value|
          if stat == :points
           return value
           
              end
            end
          end
        end
      end
    end
  end
end


def shoe_size(players_name)
  game_hash.each do |location, team|
  # access home/away and teams
    team.each do |attributs, values|
    # acess team name .color .players
      if attributs == :players
        values.each do |player, data|
        # players name and stats
        if player == players_name 
          # player stats and values
          data.each do |stat, value|
          if stat == :shoe
            return value
            
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, teams|
  # access home/away and teams
    if teams[:team_name] == team_name
         return teams[:colors]
      end
  end
  
end

def team_names
    teams_array = []
  game_hash.each do |location ,teams|
    # access hash to teams locations and place it to an array
    teams_array.push(teams[:team_name])
    end
teams_array
end  

def player_numbers(team_name)
   t_numbers = []
    game_hash.each do |locations, team|
      if team[:team_name] == team_name
        team[:players].each do |p_name, stats|
          t_numbers << stats[:number]
          
      end
    end
  end
    return t_numbers
end

def player_stats(p_name)

  game_hash.each do |location, team|
    p_stats = {}
    team[:players].each do |player, stats|
    if p_name == player
       p_stats = stats
      return p_stats
     end
    end
 end
end



def big_shoe_rebounds
    big_shoe = []
    result =0
    n_rebounds = 0
  game_hash.each do |location, team|
    team[:players].each do |p_name, stats|
        big_shoe << stats[:shoe]
        result = big_shoe.max
        if result == stats[:shoe]
            n_rebounds= stats[:rebounds]

            end
         end
      end
        return n_rebounds
end




def most_points_scored
  
end

def winning_team
end

def player_with_longest_name
end

def long_name_steals_a_ton
end