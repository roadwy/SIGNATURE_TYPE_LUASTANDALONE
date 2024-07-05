if peattributes.isdll and peattributes.no_security == true and pehdr.NumberOfSections == 7 and mp.getfilesize() > 716800 and mp.getfilesize() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN
