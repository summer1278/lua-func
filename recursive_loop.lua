function recursive_loop(start_range,end_range,inc,h)
  counter = 0
  print_number = 1
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
h = 4
recursive_loop(start_range,end_range,inc,h)
