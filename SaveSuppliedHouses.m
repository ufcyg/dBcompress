clc; # clear clio
clear; # clear variables
disp(strcat("Starting dBcompress..."," - ",ctime(time())));

disp(strcat("Loading data..."," - ",ctime(time())));
load("dbConverted_Beator.mat");
beatorData = appdata.data;
clear appdata;
load("dbConverted_Peukert.mat");
peukertData = appdata.data;
clear appdata;
load("dbConverted_Franke.mat");
frankeData = appdata.data;
clear appdata;
load("dbConverted_Mast.mat");
mastData = appdata.data;
clear appdata;
load("dbConverted_Tietgen.mat");
tietgenData = appdata.data;
clear appdata;
disp(strcat("...done", " - ", ctime(time())));

targetDB = GenerateTargetDB(12525);

foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\franke";

#Jule 2 - 3370
disp(strcat("Supplied houses franke...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\franke";
GetSuppliedHouses(frankeData,2,3370,foldername);
disp(strcat("...done", " - ", ctime(time())));
#Arne 3371 - 3749
disp(strcat("Supplied houses arne1...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\arne1";
GetSuppliedHouses(beatorData,3371,3749,foldername);
disp(strcat("...done", " - ", ctime(time())));
#Antje 3750 - 6262
disp(strcat("Supplied houses antje...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\antje";
GetSuppliedHouses(mastData,3750,6262,foldername);
disp(strcat("...done", " - ", ctime(time())));
#Daniela 6263 - 7571
disp(strcat("Supplied houses daniela...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\daniela";
GetSuppliedHouses(peukertData,6263,7571,foldername);
disp(strcat("...done", " - ", ctime(time())));
#Arne 7572 - 10260
disp(strcat("Supplied houses arne2...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\arne2";
GetSuppliedHouses(beatorData,7572,10260,foldername);
disp(strcat("...done", " - ", ctime(time())));
#Christina 10261 - 10917
disp(strcat("Supplied houses christina...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\christina";
GetSuppliedHouses(tietgenData,10261,10917,foldername);
disp(strcat("...done", " - ", ctime(time())));
#Arne 10918 - 12525
disp(strcat("Supplied houses arne3...", " - ", ctime(time())));
foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\arne3";
GetSuppliedHouses(beatorData,10918,12525,foldername);
disp(strcat("...done", " - ", ctime(time())));