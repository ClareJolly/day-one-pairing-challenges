require 'date'

# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io

@house_details ={["Basingstoke and Deane", "Tadley South"]=>
  {:count=>1,
   :average=>94000,
   :transactions=>
    [[94000,
      "RG26 3UR",
      Date.parse("1995-09-01")]]},
 ["Camden", "Cantelowes"]=>
  {:count=>1,
   :average=>215000,
   :transactions=>
    [[215000,
      "NW1 9UB",
      Date.parse("1995-03-10")]]},
 ["Conwy", "Capelulo"]=>
  {:count=>1,
   :average=>40000,
   :transactions=>
    [[40000,
      "LL34 6RW",
      Date.parse("1995-03-24")]]},
 ["Luton", "Leagrave"]=>
  {:count=>1,
   :average=>30500,
   :transactions=>
    [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
 ["Melton", "Asfordby"]=>
  {:count=>1,
   :average=>37500,
   :transactions=>
    [[37500,
      "LE14 3YP",
      Date.parse("1995-08-31")]]},
 ["Sheffield", "Beighton"]=>
  {:count=>1,
   :average=>41950,
   :transactions=>
    [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
 ["Stratford-on-Avon", "Wellesbourne East"]=>
  {:count=>1,
   :average=>70500,
   :transactions=>
    [[70500,
      "CV35 9RZ",
      Date.parse("1995-03-24")]]},
 ["Sunderland", "Millfield"]=>
  {:count=>1,
   :average=>26000,
   :transactions=>
    [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
 ["Taunton Deane", "Bishop's Lydeard"]=>
  {:count=>1,
   :average=>51500,
   :transactions=>
    [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
 ["Test Valley", "St Mary's"]=>
  {:count=>1,
   :average=>60000,
   :transactions=>
    [[60000,
      "SP10 1JG",
      Date.parse("1995-06-23")]]}}

def user_input
  puts "Enter a district or ward"
  user_search = gets.chomp
  filter(user_search)
end

def get_districts
  @districts = []
  @house_details.each do |key, value|
    @districts << key[0]
  end
  return @districts
end

def get_wards
  @wards = []
  @house_details.each do |key, value|
    @wards << key[1]
  end
  return @wards
end

def get_prices
  @prices = []
  i = 0
  @house_details.each do |key, value|
    @prices << value[:average]
    i += 1
  end
  return @prices
end

def get_dates
  @dates = []
  i = 0
  @house_details.each do |key, value|
    @dates << value[:transactions][0][2].day.to_s + " " + Date::MONTHNAMES[value[:transactions][0][2].month-1] + " " +value[:transactions][0][2].year.to_s
    i += 1
  end
  return @dates
end

def output_all
  i = 0
  while i < get_districts.length
    puts "A house was sold in #{get_districts[i]}, #{get_wards[i]} for #{get_prices[i]} on #{get_dates[i]}"
    i += 1
  end
end

def filter(lookup)
  @filtered_districts = get_districts.each_index.select { |index| get_districts[index].downcase == lookup.downcase}
  @filtered_wards = get_wards.each_index.select { |index| get_wards[index].downcase == lookup.downcase}
  if @filtered_districts.empty? && @filtered_wards.empty?
    puts "No results"
  elsif !@filtered_districts.empty?
    output(@filtered_districts)
  elsif !@filtered_wards.empty?
    output(@filtered_wards)
  end
end

def output(filter)
  filter.each do |i|
    puts "A house was sold in #{get_districts[i]}, #{get_wards[i]} for #{get_prices[i]} on #{get_dates[i]}"
    #i += 1
  end
end

user_input
