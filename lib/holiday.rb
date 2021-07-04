require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  #holiday_hash[:winter][:christmas].push(supply)
  #holiday_hash[:winter][:new_years].push(supply)
  
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, value|
      value.push(supply)
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  #holiday_hash[:spring][:memorial_day].push(supply)
  
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, value|
      if attribute == :memorial_day
        value.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    
  #holiday_hash[:winter][holiday_name] = supply_array
  #holiday_hash[:summer][holiday_name] = supply_array
  #holiday_hash[:fall][holiday_name] = supply_array
  #holiday_hash[:spring][holiday_name] = supply_array
  
  holiday_hash.each do | season_name, holiday |
    holiday_hash[season_name][holiday_name] = supply_array
  end
  
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies = []
  
  holiday_hash.each do | season, holiday |
    if season == :winter
      holiday.each do | key, value |
          value.each do | supply |
            holiday_supplies.push(supply)
          end
      end
    end
  end
  
  #holiday_supplies.push(holiday_hash[:winter][:christmas][0])
  #holiday_supplies.push(holiday_hash[:winter][:christmas][1])
  #holiday_supplies.push(holiday_hash[:winter][:new_years][0])
  
  holiday_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
        puts season.to_s.capitalize! + ":"
        holiday.each do |key, value|
          holiday_string = key.to_s + ": "
          holiday_array = holiday_string.split("_")
          holiday_array.each do |holiday_name|
              holiday_name.capitalize!
          end
          holiday_string = "  " + holiday_array.join(" ")
          holiday_string = holiday_string + value.join(", ")
          puts holiday_string
          # count = 0
          # value.each do |supply|
          #     if count > 0 || count == value.length || value.length == 1
          #       print supply.to_s + " "
          #       count += 1
          #     elsif count == 0
          #       print supply.to_s + ", "
          #       count += 1
          #     end
          # end
        end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  
  holiday_hash.each do | season, holiday |
    holiday.each do | key, value |
        value.each do | supply |
          if supply == "BBQ"
            bbq_array.push(key)
          end  
        end
    end
  end

  bbq_array
end







