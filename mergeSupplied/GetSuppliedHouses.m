function GetSuppliedHouses(data,start,stop, foldername)
suppliedHouses = data.supplied;

for i=start:1:stop
  filename = strcat(foldername,"\\suppliedCut_",num2str(data.targetDB(i,4){}));
  entry = suppliedHouses.(genvarname(strcat("targetDBsuppliedEntry",num2str(i))));  
  UnpackToXML(filename,entry);
endfor
endfunction