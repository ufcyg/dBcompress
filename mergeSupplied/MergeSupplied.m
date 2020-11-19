function targetDB = MergeSupplied(data,targetDB,start,stop)
  for i=start:1:stop
    targetDB.(genvarname(strcat("targetDBsuppliedEntry",int2str(i)))) = data.(genvarname(strcat("targetDBsuppliedEntry",int2str(i))));
  endfor
endfunction