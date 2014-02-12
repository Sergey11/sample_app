class MyClass

def compute (a, b)

  arra = []
  arrb = []
  arra = (a.to_s).split('')
  arrb = (b.to_s).split('')

  if arra.length < arrb.length
	print ("False \n")

  else if  arra == arrb

	    print("True \n")
       else  
	  i = 0
        count_arrb = {}
	  while arrb.length > i 
           j=0
           while arra.length > j
            if arrb [i] == arra[j] 
              count_arrb [i] = j
              j= arra.length
            else
              j+=1  
          end
        end
         i+=1 
    end

         if count_arrb.length == arrb.length
          k=1

           while count_arrb.length > k
            
           if count_arrb[k-1] >count_arrb[ k]
             k = count_arrb.length+1
             print("False \n")
           else
             k+=1
           end

         end
         if count_arrb.length == k
           print("True \n")
         end
      else
        print("False \n")
      end
      end
  end
  end
end


      puts("Please enter the number  A")
      a = gets
      puts("Please enter the number  B")
      b = gets


MyClass.new.compute(a.to_i , b.to_i)
  

