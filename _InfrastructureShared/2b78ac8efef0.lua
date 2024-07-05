if peattributes.no_security and mp.getfilesize() > 290816 and mp.getfilesize() < 589824 then
  return mp.INFECTED
end
return mp.CLEAN
