def increase_value_by_1(hash)
  hash.each do |key, value|
    hash[key] = value + 1
  end
end

def return_sorted_values(hash)
  hash.values.sort
end

def sort_values(hash)
  i = 0
  array_values = return_sorted_values(hash)
  hash.each do |key, value|
    hash[key] = array_values[i]
    i += 1
  end
  return hash
end

def swap_key_value(hash)
  hash.invert.collect {|key, value| [key.to_s, value.to_s]}.to_h
end
