##writes given data to an xml file
function UnpackToXML(filename,data)
  load pkg io; #load io package for simple file handling
  xlswrite(filename,data);
endfunction