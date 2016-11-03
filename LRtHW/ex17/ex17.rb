from_file, to_file = ARGV

open(to_file, 'w').write(open(from_file).read)
