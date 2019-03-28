# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key =nil 
  min_value = nil 
  name_hash.collect do |key, value|
    if min_key == nil
      min_value = value
      min_key = key 
    else min_value > value
      min_value = value
      min_key = key
    end
  end
  key
end

#This method should iterate over the hash and return the key (not the value!) that points to the smallest value of the set. If the method is called and passed an argument of an empty hash, it should return nil.