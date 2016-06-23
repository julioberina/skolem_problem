# Takes the input string and only looks for integers to push into the card_number array
card_number = []
puts "Enter 16-digit credit/debit card number: "
input = gets.scan(/[0-9]/) { |x| card_number.push(x.to_i) }

# Double every other digit and subtract 9 if it becomes greater than 9
print "\n"
0.step((card_number.length - 1), 2) do |i|
  if card_number[i] * 2 > 9
    card_number[i] = (card_number[i] * 2) - 9
  else
    card_number[i] *= 2
  end
end

# Add up resulting numbers and take the result mod 10
# If the remainder is 0, valid, else, it's invalid
if ((card_number.inject(:+) % 10) == 0)
  puts "Evaluates to #{card_number.inject(:+)}"
  puts "#{card_number.inject(:+)} (mod 10) = #{card_number.inject(:+) % 10}"
  puts "Valid credit/debit card"
else
  puts "Evaluates to #{card_number.inject(:+)}"
  puts "#{card_number.inject(:+)} (mod 10) = #{card_number.inject(:+) % 10}"
  puts "Invalid credit/debit card"
end
