clear;
clc;
load("dataFranke.mat");
load("dataBeator.mat");
load("dataMast.mat");
load("dataPeukert.mat");
load("dataTietgen.mat");

allSupplied = cell(1,10);
allSupplied(1,1) = "VersorgtesHausID";
allSupplied(1,2) = "VersorgtesHausKennungExtern";
allSupplied(1,3) = "VersorgtesHausKennungIntern";
allSupplied(1,4) = "SortIndex";
allSupplied(1,5) = "StandortID";
allSupplied(1,6) = "Straﬂe";
allSupplied(1,7) = "Hausnummer";
allSupplied(1,8) = "PLZ";
allSupplied(1,9) = "Ort";
allSupplied(1,10) = "Bemerkung";

allSupplied = AppendSupplied(frankeData,2,3370,allSupplied);
allSupplied = AppendSupplied(beatorData,3371,3749,allSupplied);
allSupplied = AppendSupplied(mastData,3750,6262,allSupplied);
allSupplied = AppendSupplied(peukertData,6263,7571,allSupplied);
allSupplied = AppendSupplied(beatorData,7572,10260,allSupplied);
allSupplied = AppendSupplied(tietgenData,10261,10917,allSupplied);
allSupplied = AppendSupplied(beatorData,10918,12525,allSupplied);

filename = "C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\suppliedHouses\\suppliedAll";
UnpackToXML(filename,allSupplied);