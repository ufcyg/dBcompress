clear;
clc;

load("dbMerged.mat");
load("dbRaw.mat")
load("suppliedDB.mat");
load("dbConverted_Beator.mat");
return;
for i=2:1:size(appdata.data.site.entryEdited,1)
  a = cell();
  a{1} = 1;
  appdata.data.site.entryEdited(i,1) = a;
endfor
