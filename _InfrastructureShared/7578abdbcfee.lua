if mp.getfilesize() > 2097152 and peattributes.isexe == true then
  return mp.INFECTED
end
return mp.CLEAN
