def add_up(i)
    sum = 0
    for number in 1..i do
       sum += number
    end
    puts "Sum for numbers from 1 to #{i} = #{sum}"
end

add_up(2) # sum equals 3


add_up(5) # sum equals 15


add_up(4) # sum equals 10
