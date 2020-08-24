function value = DateFileName(prefix)
  value = strcat(prefix,strftime ("%Y%m%e_%H-%M-%S", localtime (time ())));
endfunction
