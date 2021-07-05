require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, data|
        data.append(supply)
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, data|
        data.append(supply)
      end
    end   
  end   

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holiday|
    new_array.append(holiday.values)
  end
  new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |day, supplies|
      day = day.to_s
      if day.include? "_"
        puts "  #{day.split("_").collect {|split_holiday_name| split_holiday_name.capitalize}.join(" ")}: " + supplies.join(", ")
      else
        puts "  #{day.capitalize}: " + supplies.join(", ")
      end
    end
  end
end
 
# holiday_hash =  {
#   	:winter => {
#   		:christmas => ["Lights", "Wreath"],
# 		:new_years => ["Party Hats"]
# 	},
#   	:summer => {
# 		:fourth_of_july => ["Fireworks", "BBQ"]
#   	},
#   	:fall => {
#   		:thanksgiving => ["Turkey"]
#   	},
#   	:spring => {
#   		:memhoorial_day => ["BBQ"]
#   	}
#   }
  
def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, supplies|
      
      if supplies.include? "BBQ"
        new_array << holiday_name
      end 
    end
  end
  new_array
end

