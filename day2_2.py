with open('/Users/merel/Documents/AdventOfCode2021/Day2/input.txt') as f:
    directions = []
    amounts = []
    for line in f:
        direction, amount = line.split(" ")
        directions.append(direction)
        amounts.append(int(amount))

aim = 0
horizontal = 0
depth = 0

for i in range(len(directions)):
    if directions[i] == "forward": 
        horizontal += amounts[i] 
        depth += amounts[i] * aim
    if directions[i] == "down": aim += amounts[i]
    if directions[i] == "up": aim -= amounts[i]

print(horizontal * depth)