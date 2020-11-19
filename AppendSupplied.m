function allSupplied = AppendSupplied(data,start,stop,allSupplied)
  for i=start:1:stop
    currentSet = data.supplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))));
    for y=2:1:size(currentSet,1)
      if !isempty(currentSet(y,5){})
        allSupplied(size(allSupplied,1)+1,:) = currentSet(y,:);
      else
        break;
      end
    endfor
  endfor
endfunction