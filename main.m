##unpacks given *.mat file to XML files
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

foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses";

#Jule 2 - 3370
targetDB = AppendDB(frankeData,targetDB,2,3370);
#Arne 3371 - 3749
targetDB = AppendDB(beatorData,targetDB,3371,3749);
#Antje 3750 - 6262
targetDB = AppendDB(mastData,targetDB,3750,6262);
#Daniela 6263 - 7571
targetDB = AppendDB(peukertData,targetDB,6263,7571);
#Arne 7572 - 10260
targetDB = AppendDB(beatorData,targetDB,7572,10260);
#Christina 10261 - 10917
targetDB = AppendDB(tietgenData,targetDB,10261,10917);
#Arne 10918 - 12525
targetDB = AppendDB(beatorData,targetDB,10918,12525);

filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\siteDBtest");
UnpackToXML(filename,targetDB);

return;

filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\actionDBtest");
UnpackToXML(filename,appdata.data.action.targetDB);