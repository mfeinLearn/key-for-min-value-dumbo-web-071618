require 'pry'

# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # Convert hash to nested array
  name_a = name_hash.to_a

  # Default key value
  d_value= 10000000000000000000
  d_key= nil

  # Iterate new array 
  name_a.each do |i|
      # If current value is lower than default, change value/key pair 
      if i[1] < d_value
        # binding.pry
        d_value = i[1]
        d_key = i[0]
      end

   end

  return d_key

end  

# h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
# h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]