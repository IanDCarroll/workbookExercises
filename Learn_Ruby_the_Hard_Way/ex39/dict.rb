module Dict
  def Dict.new(num_buckets=256)
    # Initializes a new Dict object with variable 'aDict'.
    # aDict is an empty 2-Dimensional array 256 x 0 in dimension.
    # Each bucket is an empty array inside the greater array 
    # meant to house a single key-value pair.
    aDict = []
    (0...num_buckets).each do |i|
       aDict.push([])
    end

    return aDict
  end

  def Dict.hash_key(aDict, key)
    # .hash is a built-in ruby function that converts a string to a number.
    # That number is then modulated down until it is within the limits of the array.
    # This is then used as an index for the key-value pair in the array.
    return key.hash % aDict.length
  end

  def Dict.get_bucket(aDict, key)
    # Uses hash_key to access an index in the array 
    # where the key-value pair is/will be stored.
    bucket_id = Dict.hash_key(aDict, key)
    return aDict[bucket_id]
  end

  def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
    # Basically it returns every value in the bucket.
    # This is computationally a lot more efficient than having to check the entire dict.
    bucket = Dict.get_bucket(aDict, key)

    bucket.each_with_index do |kv, i|
      k, v = kv
      if key == k
        return i, k, v
      end
    end

    return -1, key, default
  end

  def Dict.get(aDict, key, default=nil)
    #gets the value in a bucket for the given key, or the default.
    i, k, v = Dict.get_slot(aDict, key, default=default)
    return v
  end

  def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing any existing value.
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)

    if i >= 0
      bucket[i] = [key, value]
    else
      bucket.push([key, value])
    end
  end

  def Dict.delete(aDict, key)
    # deletes the given key from the Dict.
    bucket = Dict.get_bucket(aDict, key)

    (0...bucket.length).each do |i|
      k, v = bucket[i]
      if key == k
        bucket.delete_at(i)
        break
      end
    end
  end

  def Dict.list(aDict)
    # Prints out what's in the Dict.
    aDict.each do |bucket|
      if bucket
        bucket.each { |k, v| puts k, v}
      end
    end
  end
end
