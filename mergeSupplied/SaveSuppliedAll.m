clear;
clc;
#load("dataFranke.mat");
#load("dataBeator.mat");
#load("dataMast.mat");
#load("dataPeukert.mat");
#load("dataTietgen.mat");
load("dbConvertedMASTER-allsupplied.mat");
allSupplied = PrepareAllSuppliedMatrix();
disp(strcat("Appending...",ctime(time())));
allSupplied = AppendSupplied(appdata.data,2,12525,allSupplied);
disp(strcat("...done.",ctime(time())));

disp(strcat("Unpacking to xml...",ctime(time())));
filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\suppliedAll";
UnpackToXML(filename,allSupplied);
disp(strcat("...done.",ctime(time())));