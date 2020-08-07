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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holi, supp|
    supp << "#{supply}"
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holi, supp|
    supp << "#{supply}"
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # remember to return the updated hash
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
 holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seas, holi|
    puts "#{seas.capitalize}:"
    holi.each do |holid, sup|
      puts"  #{holid.to_s.split('_').map {|v| v.capitalize }.join(" ") }: #{sup.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
holiday_hash.each do |seas, holi|
  holi.each do |holid, sup|
    if sup.include?("BBQ")
      array << holid
    end
    end
  end
  array
end







