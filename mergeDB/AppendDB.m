function db = AppendDB(data, db, start, stop)
  targetData = data.site.targetDB;
  entryEditedArray = data.site.entryEdited;
  for i=start:1:stop
    if entryEditedArray(i){} == 1
      for x=1:1:size(db,2)
        db(i,x) = targetData(i,x);
      endfor
    endif
  endfor
endfunction