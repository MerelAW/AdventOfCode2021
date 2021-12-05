with open('/Users/merel/Documents/AdventOfCode2021/Day2/input.txt') as f:
    directions = []
    amounts = []
    for line in f:
        direction, amount = line.split(" ")
        directions.append(direction)
        amounts.append(int(amount))

horizontal = 0
depth = 0

for i in range(len(directions)):
    if directions[i] == "forward": horizontal += amounts[i] 
    if directions[i] == "down": depth += amounts[i]
    if directions[i] == "up": depth -= amounts[i]

print(horizontal * depth)