with open('/Users/merel/Documents/AdventOfCode2021/Day1_1/input.txt') as f:
    depths = []
    for line in f:
        depths.append(int(line))

increased = 0
previous_depth = float("inf")

for depth in depths:
    if depth > previous_depth:
        increased += 1
    previous_depth = depth

print(increased)