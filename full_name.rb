def create_array
    full_name = []
    @full_name = full_name

    puts "Hi there, please introduce yourself"
    puts "What is you first name?"
    first_name = gets.chomp
    full_name.push(first_name)

    puts "Do you have middle name? y/n"
    answer = gets.chomp.downcase

    loop do
        if answer == "y"
            puts "Please enter your middle name"
            middle_name = gets.chomp
            full_name.push(middle_name)
            break
        end
        if answer == "n"
            break
        else 
            puts "Please enter only y or n"
            answer = gets.chomp.downcase
        end
    end

    puts "Also tell us your last name please"
    last_name = gets.chomp
    full_name.push(last_name)

end

create_array

def print_array
    if @full_name.length == 3
        puts "Nice to meet you #{@full_name[0]} #{@full_name[1]} #{@full_name[2]}"
    else
        puts "Nice to meet you #{@full_name[0]} #{@full_name[1]}}"
    end
end

print_array
