if mp.getfilename():match("(Ole Stream 0).*%.scr") and peattributes.isexe then
  return mp.INFECTED
end
return mp.CLEAN
