module Dict
  def Dict.new(num_buckets=256)
    # Initializes a Dict with the given number of buckets.
    aDict = []
    (0...num_buckets).each do |i|
       aDict.push([])
    end

    return aDict
  end
