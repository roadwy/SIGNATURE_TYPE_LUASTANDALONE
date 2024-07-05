if peattributes.no_security == true and mp.getfilesize() >= 110592 and mp.getfilesize() <= 131072 and pehdr.NumberOfSections == 6 and (pesecs[1].VirtualSize > 4096 or pesecs[1].VirtualSize < 8192) then
  return mp.INFECTED
end
return mp.CLEAN
