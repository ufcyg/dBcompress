function allSupplied = AppendSupplied(data,start,stop,allSupplied)
  for i=start:1:stop
    if(mod(i,100) == 0)
      disp(i);
      save -zip currentSuppliedExport.mat i;
    endif
    currentSet = data.supplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))));
    for y=2:1:size(currentSet,1)
      if !isempty(currentSet(y,6){})
        allSupplied(size(allSupplied,1)+1,:) = currentSet(y,:);
      else
        break;
      end
    endfor
  endfor
endfunction