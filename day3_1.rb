file = File.open("/Users/merel/Documents/AdventOfCode2021/Day3/input.txt")
rows = file.readlines.map(&:chomp)

bits = Array.new(12, 0)

rows.map do |row| 
    row.split("").each_with_index do |value, index|
        if value.to_i == 1
            bits[index] += 1
        end
    end
end

gamma = []
epsilon = []

bits.map do |bit| 
    bit > rows.length/2 ? gamma.append(1) : gamma.append(0)
    bit > rows.length/2 ? epsilon.append(0) : epsilon.append(1)
end

gamma = gamma.join("").to_i(2)
epsilon = epsilon.join("").to_i(2)

p gamma * epsilon