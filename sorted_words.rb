def creating_array_of_words
    array_of_words = []
    @array_of_words = array_of_words
    answer = ""
    loop do
        puts "Please enter any word or just click Enter button to finish"
        answer = gets.chomp
        if answer == ""
            break
        else array_of_words.push(answer)
        end    
    end
   
end

creating_array_of_words

def print_out_array
    sorted_array_of_words = @array_of_words.sort
    sorted_words = ""
    sorted_array_of_words.each_with_index do |sorted_word, index| 
        if index < sorted_array_of_words.length - 1
            sorted_words += sorted_word + ", "
        else sorted_words += sorted_word
        end    
    end
    puts "Your words sorted alphabetically are: #{sorted_words}"
end

print_out_array