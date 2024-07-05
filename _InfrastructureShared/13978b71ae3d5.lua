if peattributes.isvbnative and peattributes.no_security and mp.getfilesize() < 1111040 and pehdr.NumberOfSections == 3 and (pesecs[3].VirtualSize == 31486 or pesecs[3].VirtualSize == 31494) then
  return mp.INFECTED
end
return mp.CLEAN
