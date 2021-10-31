def leap_years
    @leap_years_list = []
    puts "Enter a starting year here"
    @starting_year = gets.chomp
    puts "Now enter an ending year"
    @ending_year = gets.chomp
    for year in @starting_year.to_i..@ending_year.to_i do    
        if year % 4 == 0
            if year % 100 == 0 && year % 400 == 0
            # A leap year is divisible by 4,
            # except for years that are divisible by 100 -- those aren't leap years
            # except for years that are divisible by 400, which ARE leap years.
                @leap_years_list.push(year)
            end
            if year % 100 != 0
                @leap_years_list.push(year)
            end      
        end    
    end  
end

leap_years

def print_out_leap_years
    if @leap_years_list.length == 0
        puts "There are no leap years between #{@starting_year} and #{@ending_year}"
    else leap_years_string = ""
        @leap_years_list.each_with_index do |leap_year, index|
            if index < @leap_years_list.length - 1
                leap_years_string += "#{leap_year.to_s}, "
            else leap_years_string += "#{leap_year.to_s}"
            end          
        end
        puts "Leap years between #{@starting_year} and #{@ending_year}: #{leap_years_string}"
    end
end

print_out_leap_years