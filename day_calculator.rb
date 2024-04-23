# Build a method to calculate the number of days between two dates (strings).

require "date"

# Method 1

def day_counter(date1, date2)
  date1_split = date1.split(".")
  date1_day = date1_split[0].to_i
  date1_month = date1_split[1].to_i
  date1_year = date1_split[2].to_i

  date2_split = date2.split(".")
  date2_day = date2_split[0].to_i
  date2_month = date2_split[1].to_i
  date2_year = date2_split[2].to_i

  date1_instance = Date.new(date1_year,date1_month,date1_day)
  date2_instance = Date.new(date2_year,date2_month,date2_day)

  days_between = date1_instance - date2_instance
  days_between.to_i.abs
end


# Method 2

def parse_date(date_str)
  day, month, year = date_str.split(".").map(&:to_i)
  Date.new(year, month, day)
end

def day_counter_two(date1, date2)
  parsed_date1 = parse_date(date1)
  parsed_date2 = parse_date(date2)
  (parsed_date1 - parsed_date2).to_i.abs
end


seb_bday = "27.05.1991" # -------> Date.new(1991,5,27)
ida_bday = "26.02.1992" # -------> Date.new(1992,2,26)

p day_counter(seb_bday, ida_bday)
p day_counter_two(seb_bday, ida_bday)
