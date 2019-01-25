% if, elseif, else
  x = 0;
  if x == 0,
      disp('0');
  elseif x < 0,
      disp('-');
  else
      disp('+');
  end
  
-------------------------------------------------------------------  
% for loop
  for i = 1 : 10,
      disp(i);
  end
  % or
  indices = 1 : 10;
  for i = indices,
      disp(i);
  end

-------------------------------------------------------------------  
% while loop
  i = 1;
  while i <= 5,
      disp(i);
      i++;
  end
  
% while loop with condition
  i = 1;
  while true,
      if mod(i, 2) == 0,
          i++;
          continue
      end
      disp(i);
      i++;
      if i >= 6,
          break
      end
  end
