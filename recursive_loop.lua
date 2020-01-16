--[[print recursive sequence e.g. 1,2,3,4,5,4,3,2,1,2,3....]]
function recursive_loop(start_range,end_range,inc,print_number,h)
  counter = 0
  for i = start_range,end_range,inc do
    --[[print("counter",counter)]]
    if(counter%2==0) then
      print(print_number)
      print_number = print_number+inc
    end
    if(counter%2==1) then
      print(print_number)
      print_number = print_number-inc
    end
    if(i%h)==0 then
      counter=counter+1
    end
  end
end
  
start_range = 1
end_range = 16
inc = 1
start_number = 1
end_number = 5
recursive_loop(start_range,end_range,inc,start_number,end_number-start_number+inc)

--[[get number by n_loops]]
function get_by_index(n_loops,start_number,end_number,inc)
  counter = 0
  print_number = start_number-inc
  for i = 1,n_loops,inc do
    --[[print("counter",counter)]]
    if(counter%2==0) then
      --[[print(print_number)]]
      print_number = print_number+inc
    end
    if(counter%2==1) then
      --[[print(print_number)]]
      print_number = print_number-inc
    end
    if(i%(end_number-start_number+inc))==0 then
      counter=counter+1
    end
  end
  return print_number
end

n_loops = 15
start_number = -5
end_number = 5
inc = 1
print(get_by_index(n_loops,start_number,end_number,inc))
