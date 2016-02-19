from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue or BREAK to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Okiley dokiley, we're all done here."

out_file.close
in_file.close
