if peattributes.hasexports == true and mp.getfilesize() >= 100000 and mp.getfilesize() <= 300000 then
  return mp.INFECTED
end
return mp.CLEAN
