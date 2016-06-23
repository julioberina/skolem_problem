# Let's create an empty array (sequence) and empty zero array (zero set)
linear_recurrence_relation = []
zero_set = []

# Obtains input and converts it to an integer
print "Enter number of terms: "
n = gets.to_i

# Obtain integer inputs and insert them into the empty sequence
0.upto(n-1) do |i|
  print "Enter a_#{i}: "
  term = gets.to_i
  linear_recurrence_relation.push(term)
end

# Look for the zeros of our linear recurrence relation
# Push the indexes into the zero_set (array in this case)
0.upto(n-1) do |i|
  if linear_recurrence_relation[i] == 0
    zero_set.push i
  end
end

# Beautifies output into a set of the zero indexes
puts "Zero set: {".concat(zero_set.join(", ")).concat("}")
