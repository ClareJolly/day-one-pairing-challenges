def increase_by_one(numbers)
  numbers.map { |x| x += 1 }
end

def sort_array(numbers)
  numbers.sort
end

def sort_and_increase(numbers)
  sort_array(increase_by_one(numbers))
end

def sum_array(numbers)
  numbers.reduce(:+)
end

def double_sum(numbers)
  2 * sum_array(numbers)
end
