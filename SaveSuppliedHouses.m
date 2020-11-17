clc; # clear clio
clear; # clear variables
disp(strcat("loading IO package..."," - ",ctime(time())));
pkg load io;
disp(strcat("...done."," - ",ctime(time())));

disp(strcat("Starting supplied House list extraction..."," - ",ctime(time())));

foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\franke";

if 0
  #Jule 2 - 3370
  disp(strcat("Supplied houses jule...", " - ", ctime(time())));
  load("dataFranke.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\franke";
  GetSuppliedHouses(frankeData,2,3370,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif
if 0
  #Arne 3371 - 3749
  disp(strcat("Supplied houses arne1...", " - ", ctime(time())));
  load("dataBeator.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\arne1";
  GetSuppliedHouses(beatorData,3371,3749,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif
if 0
  #Antje 3750 - 6262
  disp(strcat("Supplied houses antje...", " - ", ctime(time())));
  load("dataMast.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\antje";
  GetSuppliedHouses(mastData,3750,6262,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif
if 0
  #Daniela 6263 - 7571
  disp(strcat("Supplied houses daniela...", " - ", ctime(time())));
  load("dataPeukert.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\daniela";
  GetSuppliedHouses(peukertData,6263,7571,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif
if 0
  #Arne 7572 - 10260
  disp(strcat("Supplied houses arne2...", " - ", ctime(time())));
  load("dataBeator.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\arne2";
  GetSuppliedHouses(beatorData,7572,10260,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif
if 1
  #Christina 10261 - 10917
  disp(strcat("Supplied houses christina...", " - ", ctime(time())));
  load("dataTietgen.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\christina";
  GetSuppliedHouses(tietgenData,10261,10917,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif
if 0
  #Arne 10918 - 12525
  disp(strcat("Supplied houses arne3...", " - ", ctime(time())));
  load("dataBeator.mat");
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\arne3";
  GetSuppliedHouses(beatorData,10918,12525,foldername);
  disp(strcat("...done", " - ", ctime(time())));
endif

disp(strcat("...done", " - ", ctime(time())));