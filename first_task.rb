

class MyClass

  def road ()
    data = {}
    cites = []
    number_of_cites = 0
   # return unless File.exists?(name_file)
    file_s = File.readlines("inform.txt")
    file_s.each_with_index do | s, i |
      next if i == 0
      number_of_cites = s.to_i if i == 1
      cites.push(s.strip) if  s.to_i ==0
    end
    
    cities_arr = cites[0...number_of_cites]
    cities_arr.each{|s| data[s] = {}}
    current_city = cities_arr[1]
    file_s.each_with_index do | s, i |
      next if file_s[i-1].to_i == 0 
      if  s.to_i == 0
        current_city = s.strip
      else
        neighbour_number, distance = s.split(' ').map(&:to_i)
        neighbour_name= cities_arr[neighbour_number - 1]
        data[current_city][neighbour_name] = distance
        p "We set distance from #{current_city} to #{neighbour_name} to #{distance}"
      end

    end
    puts data
  end

end






MyClass.new.road( )













# 1
# 4
# gdansk
# 2
# 2 1
# 3 3
# bydgoszcz
# 3
# 1 1
# 3 1
# 4 4
# torun
# 3
# 1 3
# 2 1
# 4 1
# warszawa
# 2
# 2 4
# 3 1
# 2
# gdansk warszawa
# bydgoszcz warszawa
