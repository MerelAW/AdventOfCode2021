file = File.open("/Users/merel/Documents/AdventOfCode2021/Day3/input.txt")
rows_first = file.readlines.map(&:chomp)
rows_second = rows_first.dup

def count_bits(rows)
    bits = Array.new(12, 0)
    rows.map do |row| 
        row.split("").each_with_index do |value, index|
            if value.to_i == 1
                bits[index] += 1
            end
        end
    end
    bits
end

def get_answer(rows, majority)
    answer = []
    bits = count_bits(rows)
    while rows.length > 1
        bits.each_with_index do |bit, index| 
            bits = count_bits(rows)
            if majority == 1 && bits[index] >= rows.length.to_f/2 
                rows = rows.select { |row| row.split("")[index].to_i == 1 }
            elsif majority == 0 && bits[index] < rows.length.to_f/2 
                rows = rows.select { |row| row.split("")[index].to_i == 1 }
            elsif majority == 1 && bits[index] < rows.length.to_f/2 
                rows = rows.select { |row| row.split("")[index].to_i == 0 }
            else
                rows = rows.select { |row| row.split("")[index].to_i == 0 }
            end
            if rows.length == 1
                answer = rows[0]
            end
        end
    end
    answer
end

a1 = get_answer(rows_first, 1)
a2 = get_answer(rows_second, 0)
p a1.to_i(2) * a2.to_i(2)