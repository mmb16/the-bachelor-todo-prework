require 'pry'
def get_first_name_of_season_winner(data, season)
  name = ""
  data.each do |season1, contestant|
    if season1 == season
      contestant.each do |array|
          if array["status"] == "Winner"
          name = array["name"]
        end
      end
    end
  end
  name.split(" ").shift
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestants|
    contestants.each do |array|
        if array["occupation"] == occupation
          name = array["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |array|
        if array["hometown"] == hometown
          counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |array|
        if array["hometown"] == hometown
          return array["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  counter = 0
  data.each do |season1, contestant|
    if season1 == season
      contestant.each do |array|
          age += array["age"].to_f
          counter += 1
      end
    end
  end
  avg = age/counter
  avg.round
end
