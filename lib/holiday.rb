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
  holiday_hash.each do |season, data|
    data.each do |holiday, value|
    if season == :winter
        if holiday == :christmas
          holiday_hash[:winter][:christmas] = "Balloons"
        elsif holiday == :new_years
          holiday_hash[:winter][:new_years] = "Balloons"
        end
      end
    end
  end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] = ["#{supply}"]
  # holiday_hash[:spring][:memorial_day] = ["Table Cloth"]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].values
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supplies|
      if holiday == :new_years
        puts "  New Years: #{supplies.join(", ")}"
      elsif holiday == :fourth_of_july
        puts "  Fourth Of July: #{supplies.join(", ")}"
      elsif holiday == :memorial_day
        puts "  Memorial Day: #{supplies.join(", ")}"
      else
        puts "  #{holiday.to_s.capitalize}: #{supplies.join(", ")}"
      end
    end
  end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = [ ]
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      supplies.each do |supplies|
        if supplies == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  bbq_holidays
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
