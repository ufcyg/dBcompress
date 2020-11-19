clc; # clear clio
clear; # clear variables

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

targetDB.targetDBsuppliedEntry2 = frankeData.supplied.targetDBsuppliedEntry2;
#Jule 2 - 3370
disp(strcat("Merging franke...", " - ", ctime(time())));
targetDB = MergeSupplied(frankeData.supplied,targetDB,2,3370);
disp(strcat("...done", " - ", ctime(time())));
#Arne 3371 - 3749
disp(strcat("Merging arne1...", " - ", ctime(time())));
targetDB = MergeSupplied(beatorData.supplied,targetDB,3371,3749);
disp(strcat("...done", " - ", ctime(time())));
#Antje 3750 - 6262
disp(strcat("Merging antje...", " - ", ctime(time())));
targetDB = MergeSupplied(mastData.supplied,targetDB,3750,6262);
disp(strcat("...done", " - ", ctime(time())));
#Daniela 6263 - 7571
disp(strcat("Merging daniela...", " - ", ctime(time())));
targetDB = MergeSupplied(peukertData.supplied,targetDB,6263,7571);
disp(strcat("...done", " - ", ctime(time())));
#Arne 7572 - 10260
disp(strcat("Merging arne2...", " - ", ctime(time())));
targetDB = MergeSupplied(beatorData.supplied,targetDB,7572,10260);
disp(strcat("...done", " - ", ctime(time())));
#Christina 10261 - 10917
disp(strcat("Merging christina...", " - ", ctime(time())));
targetDB = MergeSupplied(tietgenData.supplied,targetDB,10261,10917);
disp(strcat("...done", " - ", ctime(time())));
#Arne 10918 - 12525
disp(strcat("Merging arne3...", " - ", ctime(time())));
targetDB = MergeSupplied(beatorData.supplied,targetDB,10918,12525);
disp(strcat("...done", " - ", ctime(time())));

supplied = targetDB;

save -zip suppliedDB.mat supplied;