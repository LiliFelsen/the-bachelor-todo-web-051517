def get_first_name_of_season_winner(data, season)
  answer = nil
  data[season].each do |contestants_info|
    if contestants_info["status"] == "Winner"
      answer = contestants_info["name"].split(" ").first
    end
  end
  answer
end

def get_contestant_name(data, occupation)
  answer = nil
  data.each do |season, contestants|
    contestants.each do |contestants_info|
      if contestants_info["occupation"] == occupation
        answer = contestants_info["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestants|
    contestants.each do |contestants_info|
      if contestants_info["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestants_info|
      if contestants_info["hometown"] == hometown
        return contestants_info["occupation"]
      end
    end
  end
end

=begin
 # I don't understand why this method is not working for 1 out of 3 tests
def get_average_age_for_season(data, season)
  total_age = 0
  nb_contestants = 0
  average_age = 0
    data.each do |season, contestants|
      contestants.each do | contestants_info|
        total_age += contestants_info["age"].to_f
        nb_contestants += 1
        average_age = total_age / nb of contestants.to_f
      end
    end
  average_age.round
end
=end

def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0
  data[season].each do |contestant_hash|
    age_total += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
