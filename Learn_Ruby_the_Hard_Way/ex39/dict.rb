module Dict
  def Dict.new(num_buckets=256)
    # Initializes a Dict with the given number of buckets.
    aDict = []
    (0...num_buckets).each do |i|
       aDict.push([])
    end

    return aDict
  end

  def Dict.hash_key(aDict, key)
    # Given a key this will create a number and then convert it to
    # an index for the aDict's buckets.
    return key.hash % aDict.length
  end

  def Dict.get_bucket(aDict, key)
    # given a key, find the bucket where it would go.
    bucket_id = Dict.hash_key(aDict, key)
    return aDict[bucket_id]
  end

  def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
    bucket = Dict.get_bucket(aDict, key)

    bucket.each_with_index do |kv, i|
      k, v = kv
      if key == k
        return i, k, v
      end
    end

    return -1, key, default
  end

