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
  supply = holiday_hash[:summer][:fourth_of_july]
  supply[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  winter_holiday = holiday_hash[:winter]
  winter_holiday.each do |holiday, supply|
    supply << "Balloons"
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  memorial_day = holiday_hash[:spring][:memorial_day]
  memorial_day.push supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        edited_holiday = holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")
          puts "  #{edited_holiday}: #{supplies.join ", "}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
new_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          new_array.push holiday
        end
      end
    end
  end
  new_array
end
