puts "Enter the range:"
n=gets().to_i
f=1
f1=1
print ("#{f} ")
print ("#{f1} ")
for i in (1..(n-2))
	f2=f+f1
	print ("#{f2} ")
	f=f1
	f1=f2
end
