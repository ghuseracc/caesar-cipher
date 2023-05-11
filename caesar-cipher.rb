def caesar_cipher(string, shift)
    alphabet = ('a'..'z').to_a
    alphabet_upcase = ('A'..'Z').to_a
    string.each_char do |char|
        if alphabet.include?(char) == true
            string.sub!(char, alphabet[(alphabet.index(char) + shift.to_i) % 26])
        elsif alphabet_upcase.include?(char) == true
            string.sub!(char, alphabet_upcase[(alphabet_upcase.index(char) + shift.to_i) % 26])
            end
        end
        puts string
end

puts "Enter a string :"
user_string = gets.chomp

puts "Enter a shift factor :"
shift_facter = gets.chomp

caesar_cipher(user_string, shift_facter)