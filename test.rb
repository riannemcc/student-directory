def testy
  filename = $0
  file = File.open(filename, "r")
  file.readlines.each do |line|
    puts line
  end
  file.close
end

testy
