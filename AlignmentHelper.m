reload = 1;
if reload
clc; # clear clio
clear; # clear variables
reload = 0;
writeToXML = 1;
disp(strcat("Starting alignment..."," - ",ctime(time())));
load("dbMerged.mat");
load("dbRaw.mat");
modifiedDB = targetDB;
endif
#targetDB(1,12) straße
for i=2:1:size(rawDB,1)
  addressUnknown = cell(1);
  addressUnknown{1} = 1;
  if !isempty(rawDB(i,26){})
    if !isempty(targetDB(i,12){})
      if !isempty(targetDB(i,13){})
        if !strcmp(rawDB(i,26){},targetDB(i,12){})
          rawDBentry = rawDB(i,26){};
          targetDBentryStreet = targetDB(i,12){};
          targetDBentryNumber = targetDB(i,13){};
          streetScore = NeedlemanWunschAlignment(rawDBentry,targetDBentryStreet);
          houseNumberScore = NeedlemanWunschAlignment(rawDBentry,targetDBentryNumber);
          if streetScore > -0.9
            addressUnknown{1} = 0;
          endif
          if houseNumberScore == 0
            #address is known
            addressUnknown{1} = 0;
          endif
        else
          addressUnknown{1} = 0;
        endif
      endif
    endif
  endif
  if(mod(i,100) == 0)
    disp(i);
  endif
  modifiedDB(i,26) = addressUnknown;
endfor

if writeToXML
  filename = DateFileName("C:\\Users\\10300202\\Desktop\\Praxedo\\ASZPM DB Rebuild\\Database\\target\\siteDBneedlew");
  UnpackToXML(filename,modifiedDB);
endif