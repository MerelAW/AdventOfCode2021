with open('/Users/merel/Documents/AdventOfCode2021/Day1_1/input.txt') as f:
    depths = []
    for line in f:
        depths.append(int(line))

increased = 0
previous_sum = float("inf")
window_size = 3

for i in range(len(depths) - window_size + 1):
    current_sum = sum(depths[i: i + window_size])
    if current_sum > previous_sum:
        increased += 1
    previous_sum = current_sum

print(increased)