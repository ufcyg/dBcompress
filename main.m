##unpacks given *.mat file to XML files
clc; # clear clio
clear; # clear variables
disp(strcat("Starting dBcompress..."," - ",ctime(time())));

disp(strcat("Loading data..."," - ",ctime(time())));
load("dbConverted_Beator.mat");
beatorData = appdata.data;
actionTargetDB = appdata.data.action.targetDB;
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
disp(strcat("Merging franke...", " - ", ctime(time())));
targetDB = AppendDB(frankeData,targetDB,2,3370);
disp(strcat("...done", " - ", ctime(time())));
#Arne 3371 - 3749
disp(strcat("Merging arne1...", " - ", ctime(time())));
targetDB = AppendDB(beatorData,targetDB,3371,3749);
disp(strcat("...done", " - ", ctime(time())));
#Antje 3750 - 6262
disp(strcat("Merging antje...", " - ", ctime(time())));
targetDB = AppendDB(mastData,targetDB,3750,6262);
disp(strcat("...done", " - ", ctime(time())));
#Daniela 6263 - 7571
disp(strcat("Merging daniela...", " - ", ctime(time())));
targetDB = AppendDB(peukertData,targetDB,6263,7571);
disp(strcat("...done", " - ", ctime(time())));
#Arne 7572 - 10260
disp(strcat("Merging arne2...", " - ", ctime(time())));
targetDB = AppendDB(beatorData,targetDB,7572,10260);
disp(strcat("...done", " - ", ctime(time())));
#Christina 10261 - 10917
disp(strcat("Merging christina...", " - ", ctime(time())));
targetDB = AppendDB(tietgenData,targetDB,10261,10917);
disp(strcat("...done", " - ", ctime(time())));
#Arne 10918 - 12525
disp(strcat("Merging arne3...", " - ", ctime(time())));
targetDB = AppendDB(beatorData,targetDB,10918,12525);
disp(strcat("...done", " - ", ctime(time())));

disp(strcat("Saving merged db...", " - ", ctime(time())));
save -zip dbMerged.mat targetDB;
disp(strcat("...done", " - ", ctime(time())));

disp(strcat("Writing DB to XML...", " - ", ctime(time())));
filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\siteDBtest");
UnpackToXML(filename,targetDB);
disp(strcat("...done", " - ", ctime(time())));
return;
# comment the return above to also extract the action DB
filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\actionDBtest");
UnpackToXML(filename,actionTargetDB);