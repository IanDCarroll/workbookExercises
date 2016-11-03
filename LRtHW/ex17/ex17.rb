from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

in_file = open(from_file).read
out_file = open(to_file, 'w').write(in_file)

puts "Alright, all done."
