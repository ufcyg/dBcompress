##writes given data to an xml file
function UnpackToXML(filename,data)
  pkg load io; #load io package for simple file handling
  xlswrite(filename,data);
endfunction