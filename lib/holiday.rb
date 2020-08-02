require 'pry'

holiday_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
      #new
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply 
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |key, data|
    if key == season
      data[holiday_name] = supply_array
    end  
  end 
  holiday_hash 
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |key, data|
    if key == :winter 
      data.each do |holiday_name, supply_array|
        supply_array.each do |supply|
          supplies << "#{supply}"
        end
      end  
    end 
  end 
  supplies 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |holiday_name, supply_array|
      puts "  #{holiday_name.to_s.gsub(/_/, " ").split.each{|word| word.capitalize!}.join(" ")}: #{supply_array[0..-1].join(", ")}"
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, data|
    data.each do |holiday_name, supply_array|
        if supply_array.include?("BBQ")
          new_array << holiday_name 
        end 
    end 
  end
  new_array  
end