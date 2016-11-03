from_file, to_file = ARGV

in_file = open(from_file).read
out_file = open(to_file, 'w').write(in_file)

puts "Copied #{from_file} to #{to_file}"
