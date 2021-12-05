file = File.open("/Users/merel/Documents/AdventOfCode2021/Day2/input.txt")
moves = file.readlines.map do |move| 
    direction, amount =  move.split(" ")
    [direction, amount.to_i]
end

aim = 0
horizontal = 0
depth = 0

moves.each do |move|
    if move[0] == "forward" 
        horizontal += move[1]
        depth += move[1] * aim
    elsif move[0] == "up" 
        aim -= move[1]
    else
        aim += move[1]
    end
end

p horizontal * depth