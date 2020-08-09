require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end



def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays_name|
    if season  == :winter 
      holidays_name.each do |holiday_name, supplies|
        supplies << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
      end
    end
   end 
end

def add_supply_to_memorial_day(holiday_hash, supply)
        holiday_hash[:spring][:memorial_day] << supply
        
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end  

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # code here
  # remember to return the updated hash
end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
 # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_with_supplies|
    puts  "#{season.capitalize}:"
    holidays_with_supplies.each do |holiday, supplies|
     holiday_name = holiday.to_s.split("_")
     holiday_name.each do |word|
        word.capitalize!
      
    
    
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  end
  new_holiday = holiday_name.join(" ")
  puts "  #{new_holiday}: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, holiday_supplies_hash|
    holiday_supplies_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_array << holiday
      end
    end
  end
  bbq_array
end







