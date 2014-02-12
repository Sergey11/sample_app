class MyClass

  #The metod for counting valid combinations with given number of brackets
  def brackets(sum)
	#Validate input
	if sum%2 == 0 && sum !=0
	  count = 2**(sum/2-1)
	  print( count.to_s+"\n")
	else
	  print( "cannot\n")
	end
  end
end

#Lets ask the user about number of brackets

puts("Please enter the number ")
v = gets


MyClass.new.brackets(v.to_i)

