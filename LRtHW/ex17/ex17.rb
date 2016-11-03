from_file, to_file = ARGV

out_file = open(to_file, 'w').write(open(from_file).read)
