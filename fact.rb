print "Enter the number:"
n= gets().to_i
print "Factorial of #{n} : "
puts ((1..n).inject('*'))