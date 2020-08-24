clc;
clear;
disp(strcat("Starting dBcompress..."," - ",ctime(time())));
disp(strcat("Loading packages..."," - ",ctime(time())));
pkg load io;
disp(strcat("...done", " - ", ctime(time())));

disp(strcat("Loading data..."," - ",ctime(time())));
load("dbConverted.mat");
disp(strcat("...done", " - ", ctime(time())));


filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\siteDB");
UnpackSite(filename,appdata.data.site.targetDB);
filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\actionDB");
UnpackAction(filename,appdata.data.action.targetDB);
for i=2:1:appdata.data.site.size
  foldername = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses";
  #mkdir foldername;
  if appdata.data.site.entryEdited(i,1){}
    filename = strcat(foldername,"\\suppliedCut_",num2str(appdata.data.site.targetDB(i,4){}));
    UnpackSupplied(filename,appdata.data.supplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(i)))));
  endif
endfor
disp(strcat("...dBcompress finished."," - ",ctime(time())));